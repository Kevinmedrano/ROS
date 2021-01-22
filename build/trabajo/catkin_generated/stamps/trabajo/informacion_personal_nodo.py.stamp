#!/usr/bin/env python
# Se importa modulos de ROS
import rospy
# Se importa modulos de dependencias de mensajes del directorio msg
from trabajo.msg import inf_personal_usuario
from espeak import espeak

# Varialbe para almacenar los idiomas de usuario


def Publicador():
    # Se inicia el nodo publicador donde envia mensajes 
    pub = rospy.Publisher('inf_pers_topic', inf_personal_usuario, queue_size=10)
    rospy.init_node('inf_personal_usuario', anonymous=True)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        # Obtenermos la informacion de usuario
        idiomas_aux = []
        datos_usuario = inf_personal_usuario()
        rospy.loginfo("Introducir informacion de usuario")
        n = raw_input("Ingrese su nombre: ")
        e = int(raw_input("Ingrese su edad: "))
        n_idiomas = int(raw_input("Cuantos idiomas habla?: "))
        # Un bucle para pedir segun la cantidad de numero de idiomas del usuario
        for i in range(n_idiomas):
            idioma = raw_input("Ingrese su idioma "+str(i+1)+": ")
            idiomas_aux.append(idioma)
        # Guardamos las variables en el archivo msg
        datos_usuario.nombre = n
        datos_usuario.edad = e
        datos_usuario.idiomas = idiomas_aux
        # Notificamos y se publican los datos
        rospy.loginfo("Datos usuarios publicados!")
        pub.publish(datos_usuario)
        rate.sleep()

if __name__ == '__main__':
    try:
        Publicador()
    except rospy.ROSInterruptException:
        pass