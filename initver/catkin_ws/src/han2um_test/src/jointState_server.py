#!/usr/bin/env python
import rospy
from control_msgs.msg import JointTrajectoryControllerState
from han2um_test.srv import *
import sys
"""
global res_th0,res_th1,res_th2,res_th3
res_th0=0
res_th1=0
res_th2=0
res_th3=0

def jointstatecallback(request):
  if request.get==True:
    sub = rospy.Subscriber("/arm_controller/state", JointTrajectoryControllerState, callback) 
  return jointstateResponse(res_th0,res_th1,res_th2,res_th3)

def callback(data):  # data.msg can be 'stop' string or any other string
    res_th0 = data.desired.positions[0]
    res_th1 = data.desired.positions[1]
    res_th2 = data.desired.positions[2]
    res_th3 = data.desired.positions[3]
    print(res_th0)
    
  
    
rospy.init_node('joint_state_server')
service=rospy.Service('jointstate',jointstate,jointstatecallback)
rospy.spin()

"""
class Jointstate:
  # get joint state 
  def __init__(self):
    self.sub=rospy.Subscriber("/arm_controller/state", JointTrajectoryControllerState, self.callback) 
  
  def callback(self,data):
    self.res_th0 = data.desired.positions[0]
    self.res_th1 = data.desired.positions[1]
    self.res_th2 = data.desired.positions[2]
    self.res_th3 = data.desired.positions[3]

  def jointstatecallback(self,request):
    return jointstateResponse(self.res_th0,self.res_th1,self.res_th2,self.res_th3)

def main(args):
  jointsub=Jointstate()
  rospy.init_node('joint_state_server')
  service=rospy.Service('jointstate',jointstate,jointsub.jointstatecallback)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")

if __name__ == '__main__':
    main(sys.argv)