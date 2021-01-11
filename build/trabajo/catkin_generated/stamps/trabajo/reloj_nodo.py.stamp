#!/usr/bin/env python
import rospy
from std_msgs.msg import String,Bool
from datetime import datetime


class Reloj:
    def __init__(self):
        self.subStart_topic = rospy.Subscriber('start_topic', String, self.callbackStart)
        self.subReset_topic = rospy.Subscriber('reset_topic', String, self.callbackReset)
        self.pubStill_topic = rospy.Publisher('still_alive_topic', Bool, queue_size=10)
        #self.timeUTC = datetime.utcnow()
        #self.timeLOCAL = datetime.now()
        self.timeLastMessage = datetime.now()
        self.live = True
        self.start = False
        self.reset = False
    
    def callbackStart(self, data):
        rospy.loginfo("Se ha recibido orden de Start para el Reloj!")
        rospy.loginfo(data.data)
        self.timeLastMessage = datetime.now()
        self.start = True
    
    def callbackReset(self, data):
        rospy.loginfo("Se ha recibido orden de Reset para el Reloj!")
        rospy.loginfo(data.data)
        timeNow = datetime.now()
        HH = 0
        MM = 0
        SS = 0
        if(timeNow.hour > self.timeLastMessage.hour):
            HH = timeNow.hour - self.timeLastMessage.hour
        if(timeNow.minute > self.timeLastMessage.minute):
            MM = timeNow.minute - self.timeLastMessage.minute
        if(timeNow.second > self.timeLastMessage.second):
            SS = timeNow.second - self.timeLastMessage.second
        cadena = str(HH)+" horas "+str(MM)+" minutos "+str(SS)+" segundos"
        rospy.loginfo("Ultimo mensaje recibido fue hace:")
        rospy.loginfo(cadena)
        self.timeLastMessage = datetime.now()
        self.reset = True
    
    def getHour_UTC_LOCAL(self, event=None):
        hourUTC = str(datetime.utcnow().hour)+":"+str(datetime.utcnow().minute)+":"+str(datetime.utcnow().second)
        print("UTC Hour: "+hourUTC)
        hourLOCAL = str(datetime.now().hour)+":"+str(datetime.now().minute)+":"+str(datetime.now().second)
        print("LOCAL Hour: "+hourLOCAL)

    def getStateReloj(self):
        self.live = True
        return self.live
    
    def still_alive(self, event=None):
        print("El Reloj esta funcionando correctamente!")
        msg = Bool()
        msg.data = self.getStateReloj()
        self.pubStill_topic.publish(msg)


rospy.init_node('reloj_nodo', anonymous=True) 
rospy.loginfo("Nodo Reloj iniciado!")
rl = Reloj()
#rl.getHour_UTC_LOCAL()
rospy.Timer(rospy.Duration(1.0/0.1), rl.still_alive)
#rospy.Timer(rospy.Duration(1.0/1.0), rl.getHour_UTC_LOCAL)
#rate = rospy.Rate(1)

while not rospy.is_shutdown():
    if rl.start:
        rospy.Timer(rospy.Duration(1.0/1.0), rl.getHour_UTC_LOCAL)
        rl.start = False
    #rate.sleep()

#rospy.spin()     
