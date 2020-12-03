; Auto-generated. Do not edit!


(cl:in-package practicas-msg)


;//! \htmlinclude mensajeTest.msg.html

(cl:defclass <mensajeTest> (roslisp-msg-protocol:ros-message)
  ((numero
    :reader numero
    :initarg :numero
    :type cl:integer
    :initform 0))
)

(cl:defclass mensajeTest (<mensajeTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mensajeTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mensajeTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name practicas-msg:<mensajeTest> is deprecated: use practicas-msg:mensajeTest instead.")))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <mensajeTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader practicas-msg:numero-val is deprecated.  Use practicas-msg:numero instead.")
  (numero m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mensajeTest>) ostream)
  "Serializes a message object of type '<mensajeTest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mensajeTest>) istream)
  "Deserializes a message object of type '<mensajeTest>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mensajeTest>)))
  "Returns string type for a message object of type '<mensajeTest>"
  "practicas/mensajeTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mensajeTest)))
  "Returns string type for a message object of type 'mensajeTest"
  "practicas/mensajeTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mensajeTest>)))
  "Returns md5sum for a message object of type '<mensajeTest>"
  "b32de927a501baab19ed61de1e6e9fe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mensajeTest)))
  "Returns md5sum for a message object of type 'mensajeTest"
  "b32de927a501baab19ed61de1e6e9fe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mensajeTest>)))
  "Returns full string definition for message of type '<mensajeTest>"
  (cl:format cl:nil "uint32 numero~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mensajeTest)))
  "Returns full string definition for message of type 'mensajeTest"
  (cl:format cl:nil "uint32 numero~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mensajeTest>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mensajeTest>))
  "Converts a ROS message object to a list"
  (cl:list 'mensajeTest
    (cl:cons ':numero (numero msg))
))
