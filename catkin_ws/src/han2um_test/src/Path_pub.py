#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from trajectory_msgs.msg import JointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint

def Path_test():
    pub = rospy.Publisher('/arm_controller/command', JointTrajectory, queue_size=10)
    rospy.init_node('Path_test', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        msg=JointTrajectory()
        msg.joint_names=['base2','link1_joint','link2_joint','link3_joint']
        ptn=JointTrajectoryPoint()
        ptn.positions=[0.8,1,0.3,0] #0 1.57 1.57/9 2.3 floor   video 0.8,1.57,0,0.8
        ptn.time_from_start=rospy.Duration.from_sec(1)
        msg.points.append(ptn)
        pub.publish(msg)
        rate.sleep()
 
if __name__ == '__main__':
    try:
        Path_test()
    except rospy.ROSInterruptException:
        pass
