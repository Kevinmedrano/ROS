#!/usr/bin/env python
# Se importa modulos de ROS
from trabajo.srv import multiplicador, multiplicadorResponse
import rospy

# Funcion para responder las consultas de los clientes
def handle_serviceAddEge(req):
    rospy.loginfo("Se realizo una consulta con exito!")
    return multiplicadorResponse(req.entrada * 2)
    
# Se inicia el nodo tipo servicio
rospy.init_node('matematico_nodo')
s = rospy.Service('servicio_multiplicador', multiplicador, handle_serviceAddEge)
rospy.loginfo("Servicio multiplicador listo!")
# Esperamos todas las posibles consultas evitando que se cierre el servidor
rospy.spin()
