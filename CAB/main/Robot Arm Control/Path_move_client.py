#! /usr/bin/env python

import rospy
from han2um_test.srv import *

rospy.init_node('path_move_client')
rospy.wait_for_service('Path_move')
x=20
y=10
z=23
test1=rospy.ServiceProxy('Path_move',path_move)
t1=test1(x,y,z)

