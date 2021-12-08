#! /usr/bin/env python

import actionlib
import rospy
import numpy as np

from han2um.srv import start_node,start_nodeResponse
from han2um.msg import godestinationAction,godestinationGoal,godestinationResult,godestinationFeedback
from han2um.srv import img_processing,img_processingRequest
from han2um.srv import return_position,return_positionRequest

def autonomyManager(request):
        #init
        bseq_start=False
        bseq_return=False
        bseq_Image=False
        img_position_bfinish_task=False
        c=1
        ##########################
        nrate=10		
        #####
        if request.words=='start':
                print("start")
                bseq_start=True
                while not rospy.is_shutdown():
        #destination position 
                        dpos_x=request.fpos_x
                        dpos_y=request.fpos_y
        #assume now global position (0,0)
                        if bseq_start==True:
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
                                if goclient.get_result().task==True:
                                        bseq_Image=False
                                        bseq_start=False
                        if bseq_Image==True:
                                print("Image Processing")
                                c=1
                                rospy.wait_for_service('img_position')
                                local_position=rospy.ServiceProxy('img_position',img_processing)
                                img_position=local_position(global_fpos_x,global_fpos_y,now_angle,c)
                                global_fpos_x=img_position.fpos_x
                                global_fpos_y=img_position.fpos_y
                                now_angle=img_position.angle
                                img_position_finish_task=img_position.task
                                if img_position_finish_task==True:
                                        print("Tracking completed")
                                        bseq_Image=False
                                        bseq_return=True
                                        c=0
                        if bseq_return ==True:
                                print("Go home")
                                d=1
                                rospy.wait_for_service('return_position')
                                new_return_position=rospy.ServiceProxy('return_position',return_position)
                                return_pos=new_return_position(global_fpos_x,global_fpos_y,now_angle,d)
                                return_task=return_pos.task
                                if return_task==True:
                                        print("mission completed")
                                        bseq_return=False
                                        d=0
                                
        return start_nodeResponse(request.words)                                                     
rospy.init_node('start_node_sub')
service=rospy.Service('start_node',start_node,autonomyManager)
rospy.spin()



