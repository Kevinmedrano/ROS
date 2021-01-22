#!/usr/bin/env python2
# Se importa modulos de ROS
import rospy
from std_msgs.msg import String,Bool
from datetime import datetime

# Se crea una clase Reloj
class Reloj:
    # Iniciamos la clase con los diferentes valores
    def __init__(self):
        self.subStart_topic = rospy.Subscriber('start_topic', String, self.callbackStart)
        self.subReset_topic = rospy.Subscriber('reset_topic', String, self.callbackReset)
        self.pubStill_topic = rospy.Publisher('still_alive_topic', Bool, queue_size=10)
        self.timeLastMessage = datetime.now()
        self.live = True
        self.start = False
        self.reset = False
    
    # Funcion de callback de start topic
    def callbackStart(self, data):
        rospy.loginfo("Se ha recibido orden de Start para el Reloj!")
        rospy.loginfo(data.data)
        self.timeLastMessage = datetime.now()
        self.start = True
    # Funcion de callback de reset topic
    def callbackReset(self, data):
        rospy.loginfo("Se ha recibido orden de Reset para el Reloj!")
        rospy.loginfo(data.data)
        timeNow = datetime.now()
        # Obtenemos el tiempo que demora en llegar el ultimo mensaje
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
    # Funcion para obtener la hora UTC y Local
    def getHour_UTC_LOCAL(self, event=None):
        hourUTC = str(datetime.utcnow().hour)+":"+str(datetime.utcnow().minute)+":"+str(datetime.utcnow().second)
        print("UTC Hour: "+hourUTC)
        hourLOCAL = str(datetime.now().hour)+":"+str(datetime.now().minute)+":"+str(datetime.now().second)
        print("LOCAL Hour: "+hourLOCAL)
    # Funcion para obtener el estado del reloj
    def getStateReloj(self):
        self.live = True
        return self.live
    # Funcion para publicar estado del reloj
    def still_alive(self, event=None):
        print("El Reloj esta funcionando correctamente!")
        msg = Bool()
        msg.data = self.getStateReloj()
        self.pubStill_topic.publish(msg)

# Iniciamos el nodo reloj
rospy.init_node('reloj_nodo', anonymous=True) 
rospy.loginfo("Nodo Reloj iniciado!")
# Instanciamos la clase reloj a un objeto
rl = Reloj()
# Creamos un timer para enviar cada sierto tiempo el estado del reloj
rospy.Timer(rospy.Duration(1.0/0.1), rl.still_alive)

while not rospy.is_shutdown():
    if rl.start:
        # Creamos un timer para imprimir la hora UTC y Local actual
        rospy.Timer(rospy.Duration(1.0/1.0), rl.getHour_UTC_LOCAL)
        rl.start = False
