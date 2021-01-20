import rospy
from sensor_msgs.msg import Image 
from cv_bridge import CvBridge, CvBridgeError
import numpy as np
import sys
import os
import cv2
class ImageListener:
    def __init__(self, topic):
        self.topic = topic
        self.bridge = CvBridge()
        self.sub = rospy.Subscriber(topic, Image, self.imageDepthCallback)

    def imageDepthCallback(self, data):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(data, data.encoding)
            # H 90~360, in HSV 
            print(cv_image)
            dis2color=(255/4)*cv_image
            dis2color=np.around(dis2color)
            #print(dis2color[15,15])
            image_color=cv2.cvtColor(dis2color,cv2.COLOR_GRAY2BGR)
            image_color[:,:,1]=30
            image_color[:,:,2]=30
            
        except CvBridgeError as e:
            print(e)
            return
        #image show
        cv2.imshow('distance_image',cv_image)
        cv2.waitKey(3)

def main():
    topic = '/rgbd_camera/depth/image_raw'
    listener = ImageListener(topic)
    rospy.spin()

if __name__ == '__main__':
    node_name = os.path.basename(sys.argv[0]).split('.')[0]
    rospy.init_node(node_name)
    main()
