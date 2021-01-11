#!/usr/bin/env python2
import rospy
from trabajo.msg import pos_usuario
from espeak import espeak
espeak.set_voice("es")

def Publicador():

    pub = rospy.Publisher('pos_usuario_topic', pos_usuario, queue_size=10)
    rospy.init_node('pos_usuario', anonymous=True)
    rate = rospy.Rate(1) # 1hz

    while not rospy.is_shutdown():
        
        pos_usu = pos_usuario()
        rospy.loginfo("Introducir coordenadas de su posicion en X Y Z")
        pos_x = int(raw_input("Ingrese su posicion en X: "))
        pos_y = int(raw_input("Ingrese su posicion en Y: "))
        pos_z = int(raw_input("Ingrese su posicion en Z: "))
        
        pos_usu.x = pos_x
        pos_usu.y = pos_y
        pos_usu.z = pos_z
        
        rospy.loginfo("Posicion de usuario publicado!")
        #rospy.loginfo(pos_usu)
        pub.publish(pos_usu)
        espeak.synth("Se ha enviado la posicion al nodo empaquetador")
        rate.sleep()

if __name__ == '__main__':
    try:
        Publicador()
    except rospy.ROSInterruptException:
        pass