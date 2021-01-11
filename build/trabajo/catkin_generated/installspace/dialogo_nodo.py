#!/usr/bin/env python2
# Se importa modulos de ROS
import rospy
# Se importa el mensaje usuario de la capeta msg
from trabajo.msg import usuario
from trabajo.srv import *
from std_msgs.msg import String, Bool
from espeak import espeak
espeak.set_voice("es")

flagClient = False
edad = 0
AuxReloj = False

def clientService(edad):
    rospy.wait_for_service('servicio_multiplicador')
    try:
        respuesta = rospy.ServiceProxy('servicio_multiplicador', multiplicador)
        resp1 = respuesta(edad)
        return resp1.resultado
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

# Funcion de llamada cada vez aue reciba datos
def callbackUser(data):
    global flagClient
    global edad
    # Se envia un info por consola
    rospy.loginfo("Datos recibidos")
    # Se muestra en consola los datos recibidos
    rospy.loginfo(data)
    edad = data.infPersonal.edad
    text = "de "+data.infPersonal.nombre
    espeak.synth("Se recibieron los datos completos")
    espeak.synth(text)
    flagClient = True

def callbackRelojAlive(data):
    rospy.loginfo("Still alive recibido!")
    print(data.data)
    if data.data:
        print("Reloj sigue funcionando correctamente!")


# Iniciamos nodo
# Iniciamos el nodo dialogo     
rospy.init_node('nodo_dialogo', anonymous=True)
# Se subscribe el nodo al  topico user_topic con su respectivo llamada a funcion callback
rospy.Subscriber("user_topic", usuario, callbackUser)
rospy.Subscriber("still_alive_topic", Bool, callbackRelojAlive)

# Se pone en estado de espera de mensajes para seguir ejecutando el subscriptor
pubRelojStart = rospy.Publisher("start_topic", String, queue_size=10)

pubRelojReset = rospy.Publisher("reset_topic", String, queue_size=10)

rospy.loginfo("Nodo dialogo iniciado!")
while not rospy.is_shutdown():
    
    if flagClient:
        if AuxReloj:
            pubRelojReset.publish("Reset")
            espeak.synth("Se ha enviado la orden de reset del reloj")
        if not AuxReloj:
            pubRelojStart.publish("Start")
            espeak.synth("Se ha enviado la orden de start del reloj")
            AuxReloj = True
        resultServer = clientService(edad)
        rospy.loginfo("Resultado del Servidor: "+str(resultServer))
        
        flagClient = False
        
        
        
#rospy.spin()