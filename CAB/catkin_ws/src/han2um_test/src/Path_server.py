
#! /usr/bin/env python

import actionlib
import rospy
import numpy as np

from han2um_test.msg import PathAction,PathGaol,PathResult

print("go destinaiton")
def feedback_cb(feedback):
        print('[Feedback] now position x:%f'%(feedback.fpos_x))
        print('[Feedback] now position y:%f'%(feedback.fpos_y))
goclient=actionlib.SimpleActionClient('go_destination',godestinationAction)
goclient.wait_for_server()
goal=godestinationGoal()
goal.fpos_x=dpos_x
goal.fpos_y=dpos_y
goclient.send_goal(goal,feedback_cb=feedback_cb)
goclient.wait_for_result()
global_fpos_x=goclient.get_result().fpos_x
global_fpos_y=goclient.get_result().fpos_y
now_angle=goclient.get_result().angle
print('[Result] goal position x:%f'%(goclient.get_result().fpos_x))
print('[Result] goal position y:%f'%(goclient.get_result().fpos_y))