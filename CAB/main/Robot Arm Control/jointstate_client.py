#! /usr/bin/env python

import rospy
from han2um_test.srv import *

rospy.init_node('jointstate_client')
rospy.wait_for_service('jointstate')
word=True
test1=rospy.ServiceProxy('jointstate',jointstate)
t1=test1(word)
print(t1)
