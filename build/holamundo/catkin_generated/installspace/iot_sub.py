#!/usr/bin/env python2
# Kevin Medrano Ayala
# 27-11-2020

import rospy
from holamundo.msg import IoTSensor

def iot_sensor_callback(iot_sensor_message):
    rospy.loginfo("Rx from Python: (%d, %s, %.2f ,%.2f)", 
        iot_sensor_message.id,iot_sensor_message.region,
        iot_sensor_message.temperatura,iot_sensor_message.humedad)
    
rospy.init_node('nodo_sub_iot', anonymous=True)

rospy.Subscriber("topic_iot", IoTSensor, iot_sensor_callback)

# spin() simply keeps python from exiting until this node is stopped
rospy.spin()
