#!/usr/bin/env python2
# Se importa modulos de ROS
import rospy
from trabajo.msg import pos_usuario
# Se importa modulo para TTS
from espeak import espeak

def Publicador():
    # Definimos e iniciamos el nodo publicador
    pub = rospy.Publisher('pos_usuario_topic', pos_usuario, queue_size=10)
    rospy.init_node('pos_usuario', anonymous=True)
    rate = rospy.Rate(1) 

    while not rospy.is_shutdown():
        # Obtenemos los datos de posicion del usuario ingresados por teclado
        pos_usu = pos_usuario()
        rospy.loginfo("Introducir coordenadas de su posicion en X Y Z")
        pos_x = int(raw_input("Ingrese su posicion en X: "))
        pos_y = int(raw_input("Ingrese su posicion en Y: "))
        pos_z = int(raw_input("Ingrese su posicion en Z: "))
        # Guardamos los valores en el archivo msg
        pos_usu.x = pos_x
        pos_usu.y = pos_y
        pos_usu.z = pos_z
        # Notificamos y se publican los datos
        rospy.loginfo("Posicion de usuario publicado!")
        pub.publish(pos_usu)
        rate.sleep()

if __name__ == '__main__':
    try:
        Publicador()
    except rospy.ROSInterruptException:
        pass