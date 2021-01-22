#!/usr/bin/env python
# Se importa modulos de ROS
import rospy
# Se importa modulos de dependencias de mensajes de tipo String
from std_msgs.msg import String


# Se inicia el nodo publicador donde envia cadenas de texto
pub = rospy.Publisher('emocion_topic', String, queue_size=10)
# Se inicia el nodo actual 
rospy.init_node('emocion_usuario', anonymous=True)

# Se realiza un bucle para publicar los datos respectivos mientras no se cierre o muera el nodo
while not rospy.is_shutdown():
    # Se imprime un mensaje por consola para indicar que ingrese cadena de texto con una palabra emocion
    emocion = raw_input("Ingrese su emocion: ")
    # Notificamos y se publican los datos
    rospy.loginfo("Emocion de usuario publicado!")
    pub.publish(emocion)
