#!/usr/bin/python
#
# Send joint values to UR5 using messages
#
import argparse

from trajectory_msgs.msg import JointTrajectory
from std_msgs.msg import Header
from trajectory_msgs.msg import JointTrajectoryPoint
import rospy
import sys, select, termios, tty
import actionlib
import control_msgs.msg
msg = """
Reading from the keyboard  and Publishing to Twist!
---------------------------
Moving around:
q= shoulder_pan_joint +
w= shoulder_pan_joint -
e= shoulder_lift_joint +
r= shoulder_lift_joint -
t= elbow_joint+
y= elbow_joint-
u= wrist_3_joint+
i=wrist_3_joint-
o=gripper +
p=gripper -
CTRL-C to quit
"""
moveBindings = {
    'q':(0.1,0,0,0,0),
    'w':(-0.1,0,0,0,0),
    'e':(0,0.1,0,0,0),
    'r':(0,-0.1,0,0,0),
    't':(0,0,0.1,0,0),
    'y':(0,0,-0.1,0,0),
    'u':(0,0,0,0.1,0),
    'i':(0,0,0,-0.1,0),
    'o':(0,0,0,0,0,0),
    'p':(0,0,0,0,0,0)

}
def gripper_client(value):

    # Create an action client
    client = actionlib.SimpleActionClient(
        '/gripper_controller/gripper_cmd',  # namespace of the action topics
        control_msgs.msg.GripperCommandAction # action type
    )
    
    # Wait until the action server has been started and is listening for goals
    client.wait_for_server()

    # Create a goal to send (to the action server)
    goal = control_msgs.msg.GripperCommandGoal()
    goal.command.position = value   # From 0.0 to 0.8
    goal.command.max_effort = -1.0  # Do not limit the effort
    client.send_goal(goal)

    client.wait_for_result()
    return client.get_result()

def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


if __name__ == '__main__':
    settings = termios.tcgetattr(sys.stdin)
    rospy.init_node('send_joints')
    pub = rospy.Publisher('/trajectory_controller/command',JointTrajectory,queue_size=10)

    # Create the topic message
    traj = JointTrajectory()
    traj.header = Header()
    # Joint names for UR5
    traj.joint_names = ['shoulder_pan_joint', 'shoulder_lift_joint','elbow_joint','wrist_3_joint']

    rate = rospy.Rate(10)
    pts = JointTrajectoryPoint()
    pts.positions=[0,0,0,0]
    try:
        print(msg)
        x1=0
        x2=-1.3
        x3=0
        x4=0
        while not rospy.is_shutdown():
            key=getKey()
            if key in moveBindings.keys():
                shoulder_pan_joint=moveBindings[key][0]
                shoulder_lift_joint=moveBindings[key][1]
                elbow_joint=moveBindings[key][2]
                wrist_3_joint=moveBindings[key][3]

                x1=x1+shoulder_pan_joint
                x2=x2+shoulder_lift_joint
                x3=x3+elbow_joint
                x4=x4+wrist_3_joint
                traj.header.stamp = rospy.Time.now()
                pts = JointTrajectoryPoint()

                pts.positions = [x1, x2, x3, x4]
                pts.time_from_start = rospy.Duration(1.0)

                # Set the points to the trajectory
                traj.points = []
                traj.points.append(pts)
                # Publish the message
                pub.publish(traj)
                if key=='o':
                    parser = argparse.ArgumentParser()
                    parser.add_argument("--value", type=float, default="0.5",
                                        help="Value betwewen 0.0 (open) and 0.8 (closed)")
                    args = parser.parse_args()
                    gripper_value = args.value
                    # Start the ROS node
                    #rospy.init_node('gripper_command1')
                    # Set the value to the gripper
                    result = gripper_client(gripper_value)
                if key=='p':
                    parser = argparse.ArgumentParser()
                    parser.add_argument("--value", type=float, default="0.0",
                                        help="Value betwewen 0.0 (open) and 0.8 (closed)")
                    args = parser.parse_args()
                    gripper_value = args.value
                    # Start the ROS node
                    #rospy.init_node('gripper_command2')
                    # Set the value to the gripper
                    result = gripper_client(gripper_value)

    except rospy.ROSInterruptException:
        print ("Program interrupted before completion")
