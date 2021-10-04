#!/usr/bin/python
#
# Send joint values to UR5 using messages
#

import actionlib
from han2um.msg import godestinationAction,godestinationGoal,godestinationResult,godestinationFeedback
from trajectory_msgs.msg import JointTrajectory
from std_msgs.msg import Header
from trajectory_msgs.msg import JointTrajectoryPoint
import rospy
import numpy as np
from sympy import *
import math
def go_position(goal):
    pub = rospy.Publisher('/trajectory_controller/command',JointTrajectory,queue_size=10)
    goal_x=goal.fpos_x
    goal_y=goal.fpos_y
    print("goal_x:",goal_x)
    print("goal_y:",goal_y)
    #goal_z=goal.fpos_z
    now_position=np.array([0,0])
    # Create the topic message
    traj = JointTrajectory()
    traj.header = Header()
    # Joint names for UR5
    traj.joint_names = ['shoulder_pan_joint', 'shoulder_lift_joint','elbow_joint','wrist_3_joint']
    rate = rospy.Rate(10)
    #th1, th2, nx, ny, nz, ox, oy, oz, ax, ay, az, Px, Py, Pz, a1, a2=symbols('th1,th2,nx,ny,nz,ox,oy,oz,ax,ay,az,Px,Py,Pz,a1,a2')
    while not rospy.is_shutdown():
        #input position, output angle algori
        #RotZ1 = np.array([[cos(th1), sin(th1), 0, 0],[sin(th1), cos(th1), 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]])
        #RotZ2 = np.array([[cos(th2), -sin(th2), 0, 0], [sin(th2), cos(th2), 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]])
        #TransA1 = np.array([[1, 0, 0, a1], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]])
        #TransA2 = np.array([[1, 0, 0, a2], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]])
        #T_0_2 = RotZ1*TransA1*RotZ2*TransA2
        #TT = np.array([[nx, ox, ax, Px], [ny, oy, ay, Py], [nz, oz, az, Pz], [0, 0, 0, 1]])        
        #LS1 = simplify(np.linalg.inv(RotZ1)*TT)
        #RS1 = simplify(np.linalg.inv(RotZ1)*T_0_2)

        #assume link lenght
        a1=5 #link1 length
        a2=3 #link2 length
        Px=goal_x #goal_x
        Py=goal_y #goal_y
        th2 = np.array([2*atan((float((a1+a2)**2-(Px**2+Py**2))/float(Px**2+Py**2-(a1-a2)**2))**0.5), -2*atan((float((a1+a2)**2-(Px**2+Py**2))/float(Px**2+Py**2-(a1-a2)**2))**0.5)])
        th1 = np.array([atan2(float(Py),float(Px)) - atan(float(a2*sin(th2[0]))/float(a1+a2*cos(th2[0]))),atan2(float(Py),float(Px)) - atan(float(a2*sin(th2[1]))/float(a1+a2*cos(th2[1])))])
        traj.header.stamp = rospy.Time.now()
        pts = JointTrajectoryPoint()
        #choice th1[1],th2[1] // th1[2],th2[2]
        pts.positions = [th1[1],th2[1] ,0.0 , 0.0]
        pts.time_from_start = rospy.Duration(1.0)

        # Set the points to the trajectory
        traj.points = []
        traj.points.append(pts)
        # Publish the message
        pub.publish(traj)

    result=godestinationResult()
    result.fpos_x=now_position[0]
    result.fpos_y=now_position[1]
    result.task=True
    server.set_succeeded(result,"destination completed successfully")

rospy.init_node('destination_action_server')
server=actionlib.SimpleActionServer('go_destination',godestinationAction,go_position,False)
server.start()
rospy.spin()