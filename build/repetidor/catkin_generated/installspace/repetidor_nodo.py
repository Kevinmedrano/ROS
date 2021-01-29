#!/usr/bin/env python2
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import String

flag = False
valores = Twist()

def callback(data):
    global flag
    global valores
    flag = True
    valores = data
    print(valores)
    rospy.loginfo("Repetidor funcionando!")

rospy.init_node('repetidor_nodo', anonymous=True)
rospy.Subscriber("/joy_teleop/cmd_vel", Twist, callback)
pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=10)
rospy.loginfo("Nodo repetidor iniciado!")

while not rospy.is_shutdown():
    #rospy.loginfo('Info from ROS')
    if flag:
        pub.publish(valores)
        flag = False

