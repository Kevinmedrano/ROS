#!/usr/bin/env python2
# Kevin Medrano Ayala
# 27-11-2020

import rospy
from holamundo.msg import IoTSensor
import random

pub = rospy.Publisher('topic_iot', IoTSensor, queue_size=10)

rospy.init_node('nodo_pub_iot', anonymous=True)

rate = rospy.Rate(1) # 1hz
i = 0

while not rospy.is_shutdown():
    
    iot_sensor = IoTSensor()
    #print("ingrese 2 valores")
    
    iot_sensor.id = i
    iot_sensor.region= "IoT_Bolivia"
    temp = int(input("ingrese valor de temperatura: "))
    iot_sensor.temperatura = temp#21.33 + (random.random()*2)
    hume = int(input("ingrese valor de humedad: "))
    iot_sensor.humedad = hume#33.41+ (random.random()*2)
    
    rospy.loginfo("Tx from Python:")
    rospy.loginfo(iot_sensor)
    pub.publish(iot_sensor)
    rate.sleep()
    i=i+1

