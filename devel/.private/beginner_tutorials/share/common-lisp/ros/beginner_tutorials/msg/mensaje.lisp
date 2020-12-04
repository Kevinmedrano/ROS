; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude mensaje.msg.html

(cl:defclass <mensaje> (roslisp-msg-protocol:ros-message)
  ((numero
    :reader numero
    :initarg :numero
    :type cl:integer
    :initform 0))
)

(cl:defclass mensaje (<mensaje>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mensaje>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mensaje)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<mensaje> is deprecated: use beginner_tutorials-msg:mensaje instead.")))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <mensaje>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:numero-val is deprecated.  Use beginner_tutorials-msg:numero instead.")
  (numero m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mensaje>) ostream)
  "Serializes a message object of type '<mensaje>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mensaje>) istream)
  "Deserializes a message object of type '<mensaje>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mensaje>)))
  "Returns string type for a message object of type '<mensaje>"
  "beginner_tutorials/mensaje")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mensaje)))
  "Returns string type for a message object of type 'mensaje"
  "beginner_tutorials/mensaje")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mensaje>)))
  "Returns md5sum for a message object of type '<mensaje>"
  "b32de927a501baab19ed61de1e6e9fe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mensaje)))
  "Returns md5sum for a message object of type 'mensaje"
  "b32de927a501baab19ed61de1e6e9fe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mensaje>)))
  "Returns full string definition for message of type '<mensaje>"
  (cl:format cl:nil "uint32 numero~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mensaje)))
  "Returns full string definition for message of type 'mensaje"
  (cl:format cl:nil "uint32 numero~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mensaje>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mensaje>))
  "Converts a ROS message object to a list"
  (cl:list 'mensaje
    (cl:cons ':numero (numero msg))
))
