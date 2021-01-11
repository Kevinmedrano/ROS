#!/usr/bin/env python2

from trabajo.srv import multiplicador, multiplicadorResponse
import rospy

def handle_serviceAddEge(req):
    return multiplicadorResponse(req.entrada * 2)
    rospy.loginfo("Se realizo una consulta con exito!")

rospy.init_node('matematico_nodo')
s = rospy.Service('servicio_multiplicador', multiplicador, handle_serviceAddEge)
rospy.loginfo("Servicio multiplicador listo!")
rospy.spin()
