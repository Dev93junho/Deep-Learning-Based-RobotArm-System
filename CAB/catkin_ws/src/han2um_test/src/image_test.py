#!/usr/bin/env python
from __future__ import print_function

import roslib
import sys
import rospy
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class image_converter:
	def __init__(self):
    #self.image_pub = rospy.Publisher("/rrbot/camera1/image_raw",Image)
		self.bridge = CvBridge()
		#self.image_sub = rospy.Subscriber("/rrbot/camera1/image_raw",Image,self.callback)
		self.image_sub = rospy.Subscriber("/rgbd_camera/rgb/image_raw",Image,self.callback)

	def callback(self,data):
		try:
			cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")#bgr8 16UC1
			#cv_image=cv2.cvtColor(cv_image,cv2.COLOR_
		except CvBridgeError as e:
			print(e)
		#(rows,cols,channels) = cv_image.shape
		#if cols > 60 and rows > 60 :
		#	cv2.circle(cv_image, (50,50), 10, 255)
		cv2.imshow("Image window", cv_image)
		cv2.waitKey(3)

ic = image_converter()
rospy.init_node('image_converter', anonymous=True)
try:
    rospy.spin()
except KeyboardInterrupt:
    print("Shutting down")
cv2.destroyAllWindows()

