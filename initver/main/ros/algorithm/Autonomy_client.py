#!/usr/bin/env python

import rospy
import sys
from landbot.srv import start_node
from landbot.srv import start_nodeRequest

rospy.init_node('Autonomy_client')
rospy.wait_for_service('start_node')
word='start'
# desired position
fpre_pos_x=5
fpre_pos_y=5
word_counter=rospy.ServiceProxy('start_node',start_node)
new_word_counter=word_counter(word,fpre_pos_x,fpre_pos_y)

print word

