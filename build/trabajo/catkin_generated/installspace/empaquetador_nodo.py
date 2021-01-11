#!/usr/bin/env python2
# Se importa modulos de ROS
import rospy
#from trabajo.msg import usuario
# Se importa modulos de dependencias de mensajes de tipo String y mensajes del directorio msg
from std_msgs.msg import String
from trabajo.msg import pos_usuario
from trabajo.msg import inf_personal_usuario
from trabajo.msg import usuario

#Variables auxiliares para uso tipo bandera (Flag)
data_personal = False
data_emocion = False
data_posicion = False
# declaramos los datos de usuario
datos = usuario()

# Se define las funciones de callback para recepcioin de datos
def callback1(data):
    global data_personal
    rospy.loginfo("Datos Informacion Usuario") 
    rospy.loginfo(data)
    datos.infPersonal = data
    data_personal = True

def callback2(data):
    global data_emocion
    rospy.loginfo("Datos Emocion")
    rospy.loginfo(data)
    datos.emocion = str(data.data)
    data_emocion = True

def callback3(data):
    global data_posicion
    rospy.loginfo("Datos Posicion Usuario")
    rospy.loginfo(data)
    datos.posicion = data
    data_posicion = True

# Se inicia el nodo publicador donde envia mensajes usuario
pub = rospy.Publisher('user_topic', usuario, queue_size=10)
# Se inicia el nodo actual 
rospy.init_node('usuario', anonymous=True)
# Se envia un info por consola
rospy.loginfo("Nodo registrado!")
# Se realizan las subscripciones a 3 topicos 
rospy.Subscriber("inf_pers_topic", inf_personal_usuario, callback1)
rospy.Subscriber("emocion_topic", String , callback2)
rospy.Subscriber("pos_usuario_topic", pos_usuario, callback3)

# Se realiza un bucle para publicar los datos respectivos mientras no se cierre o muera el nodo
while not rospy.is_shutdown():
    # se verifica si las 3 funciones de callback recibieron datos para luego publicar todo en uno solo    
    if data_posicion == True and data_personal == True and data_emocion == True:
        rospy.loginfo("3 Datos recibidos de 3 nodos y enviados!")
        pub.publish(datos)
        data_posicion = False
        data_personal = False
        data_emocion = False
    #rospy.sleep(1)
    