#!/usr/bin/env python

import rospy
from landingbot.srv import start_node,start_nodeResponse
from std_msgs.msg import Int32
def count_words(request):
	if request.words=='start':
		pub_steering.publish(count)
		pub_motor.publish(count2)
		pub_led.publish(count3)
		return start_nodeResponse(len(request.words))

rospy.init_node('start_node')
count=100
count2=50
count3=9
pub_steering=rospy.Publisher('steering',Int32,queue_size=10)
pub_motor=rospy.Publisher('motor',Int32,queue_size=10)
pub_led=rospy.Publisher('led',Int32,queue_size=10)
service=rospy.Service('start_node',start_node,count_words)

rospy.spin()
