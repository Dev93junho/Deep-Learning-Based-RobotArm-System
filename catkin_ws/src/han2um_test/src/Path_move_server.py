#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from trajectory_msgs.msg import JointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
import math as mt
from control_msgs.msg import JointTrajectoryControllerState
from han2um_test.srv import *
import numpy as np


def Path_move(request):
    #link length
    l1=25
    l2=20
    l3=5
    # go position
    pos_x=request.fpos_x
    pos_y=request.fpos_y
    pos_z=request.fpos_z
    # calculate angle
    r=mt.sqrt(pos_x*pos_x+pos_y*pos_y+pos_z*pos_z)
    if r>50:
        print("over max distance")

    #reference=robotarm current joint angle
    rospy.wait_for_service('jointstate')
    word=True
    jointangle=rospy.ServiceProxy('jointstate',jointstate)
    res=jointangle(word)  # res.th0~3
    
    res_rx=l1*mt.cos(res.th1)+l2*mt.cos(res.th1+res.th2)
    res_rrx=l1*mt.cos(res.th1)+l2*mt.cos(res.th1+res.th2)+l3*mt.cos(res.th1+res.th2+res.th3)
    res_rz=l1*mt.sin(res.th1)+l2*mt.sin(res.th1+res.th2)
    res_rrz=l1*mt.sin(res.th1)+l2*mt.sin(res.th1+res.th2)+l3*mt.sin(res.th1+res.th2+res.th3)

    # circle's dot min distance
    num=8
    t=np.linspace(0,2*mt.pi,num)
    Cx=np.zeros(num)
    Cz=np.zeros(num)
    for i in range(0,num):
        Cx[i]=l3*mt.cos(t[i])+pos_x
        Cz[i]=l3*mt.sin(t[i])+pos_z

    distance=np.zeros(num)
    for i in range(0,num):
        distance[i]=mt.sqrt((res_rx-Cx[i])**2+(res_rz-Cz[i])**2)
    min_num=np.argmin(distance)
    Px=Cx[min_num]
    Pz=Cz[min_num]
    print(Px,Pz)
    #IK
    th0=mt.atan(pos_y/pos_x)
    d=mt.sqrt(Px**2+Pz**2)
    th2=-1*mt.acos((d**2-l1**2-l2**2)/(2*l1*l2))
    alpha=mt.atan(Pz/Px)
    th1=mt.acos((d**2+l1**2-l2**2)/(2*d*l1))+alpha
    rx=l1*mt.cos(th1)
    rz=l1*mt.sin(th1)
    th2_m=mt.atan((Pz-rz)/(Px-rx))
    th3_m=mt.atan((pos_z-Pz)/(pos_x-Px))
    th3=(th3_m-th2_m)

    # distance error
    de=0.1
    pub = rospy.Publisher('/arm_controller/command', JointTrajectory, queue_size=10)
    print('real')
    print('th0: %f,th1: %f,th2:%f,th3:%f' %(th0,th1,th2,th3))
    #angle error fillter
    
    th1=angle_filter(th1)
    th2=angle_filter(th2)
    th3=angle_filter(th3)
    print('filter')
    print('th0: %f,th1: %f,th2:%f,th3:%f' %(th0,th1,th2,th3))
    print('th0_d:%f,th1_d:%f,th2_d:%f,th3_d:%f' %(th0*180/mt.pi,th1*180/mt.pi,th2*180/mt.pi,th3*180/mt.pi))
    

    while not rospy.is_shutdown():
        msg=JointTrajectory()
        msg.joint_names=['base2','link1_joint','link2_joint','link3_joint']
        ptn=JointTrajectoryPoint()

        ptn.positions=[th0,th1,th2,th3]
        ptn.time_from_start=rospy.Duration.from_sec(1)
        msg.points.append(ptn)
        pub.publish(msg)
        rate.sleep()

        rospy.wait_for_service('jointstate')
        word=True
        jointangle=rospy.ServiceProxy('jointstate',jointstate)
        res=jointangle(word)  # res.th0~3
        
        #0<=res.th0<=360degree
        #0<=res.th1<=90degree
        #0<=res.th2<=90degree
        #0<=res.th3<=90degree

        if ((res.th0-th0)<=de)and((res.th1-th1)<=de)and((res.th2-th2)<=de)and((res.th3-th3)<=de):
            print('move complete')
            break

def angle_filter(theta):
    if theta<0:
        theta=-theta
    return theta
"""
def angle_filter123(theta):
    
    if theta<0:
        theta=-theta

    theta=mt.pi/2-theta

    if not 0<=theta<=mt.pi/2:
        theta=theta-mt.pi
    return theta"""
        


rospy.init_node('Path_move', anonymous=True)
service=rospy.Service('Path_move',path_move,Path_move)
rate = rospy.Rate(10) # 10hz
rospy.spin()
