#!/usr/bin/env python2
# Se importa modulos de ROS
import rospy
# Se importa modulos de dependencias de mensajes de tipo String
from std_msgs.msg import String
from espeak import espeak
espeak.set_voice("es")

# Se inicia el nodo publicador donde envia cadenas de texto
pub = rospy.Publisher('emocion_topic', String, queue_size=10)
# Se inicia el nodo actual 
rospy.init_node('emocion_usuario', anonymous=True)

#rate = rospy.Rate(1) # 1hz
# Se realiza un bucle para publicar los datos respectivos mientras no se cierre o muera el nodo
while not rospy.is_shutdown():
    # Se imprime un mensaje por consola para indicar que ingrese cadena de texto con una palabra emocion
    emocion = raw_input("Ingrese su emocion: ")
    # Se envia un info por consola
    rospy.loginfo("Emocion de usuario publicado!")
    espeak.synth("Se ha enviado el dato al nodo empaquetador")
    #rospy.loginfo(emocion)
    # Se publica el dato emocion
    pub.publish(emocion)
    #rate.sleep()
