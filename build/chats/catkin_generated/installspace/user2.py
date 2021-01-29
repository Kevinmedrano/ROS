#!/usr/bin/env python2
import rospy
from std_msgs.msg import String

def callback(data):
    print("\n"+data.data)
    #rospy.loginfo(data.data)

# default name for the user
user_name = "Robot"
message = ""
rospy.init_node('user2_node', anonymous=True)
rospy.Subscriber("send_topic", String, callback) 
pub = rospy.Publisher('receive_topic', String, queue_size=10)

user_name = raw_input("Write your user name: ")
rospy.loginfo(user_name+" is ready to chat!")
while not rospy.is_shutdown():
    # Read the message for the user
    msg = raw_input("Msg to send: ")
    message = user_name+": "+msg
    pub.publish(message)
