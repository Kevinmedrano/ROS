; Auto-generated. Do not edit!


(cl:in-package holamundo-msg)


;//! \htmlinclude IoTSensor.msg.html

(cl:defclass <IoTSensor> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (region
    :reader region
    :initarg :region
    :type cl:string
    :initform "")
   (temperatura
    :reader temperatura
    :initarg :temperatura
    :type cl:float
    :initform 0.0)
   (humedad
    :reader humedad
    :initarg :humedad
    :type cl:float
    :initform 0.0))
)

(cl:defclass IoTSensor (<IoTSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IoTSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IoTSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name holamundo-msg:<IoTSensor> is deprecated: use holamundo-msg:IoTSensor instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holamundo-msg:id-val is deprecated.  Use holamundo-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'region-val :lambda-list '(m))
(cl:defmethod region-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holamundo-msg:region-val is deprecated.  Use holamundo-msg:region instead.")
  (region m))

(cl:ensure-generic-function 'temperatura-val :lambda-list '(m))
(cl:defmethod temperatura-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holamundo-msg:temperatura-val is deprecated.  Use holamundo-msg:temperatura instead.")
  (temperatura m))

(cl:ensure-generic-function 'humedad-val :lambda-list '(m))
(cl:defmethod humedad-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holamundo-msg:humedad-val is deprecated.  Use holamundo-msg:humedad instead.")
  (humedad m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IoTSensor>) ostream)
  "Serializes a message object of type '<IoTSensor>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'region))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'region))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperatura))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'humedad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IoTSensor>) istream)
  "Deserializes a message object of type '<IoTSensor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'region) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'region) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperatura) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humedad) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IoTSensor>)))
  "Returns string type for a message object of type '<IoTSensor>"
  "holamundo/IoTSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IoTSensor)))
  "Returns string type for a message object of type 'IoTSensor"
  "holamundo/IoTSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IoTSensor>)))
  "Returns md5sum for a message object of type '<IoTSensor>"
  "bc380b2aacba9ecd7c71cb52d71dc748")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IoTSensor)))
  "Returns md5sum for a message object of type 'IoTSensor"
  "bc380b2aacba9ecd7c71cb52d71dc748")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IoTSensor>)))
  "Returns full string definition for message of type '<IoTSensor>"
  (cl:format cl:nil "int32 id~%string region~%float32 temperatura~%float32 humedad~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IoTSensor)))
  "Returns full string definition for message of type 'IoTSensor"
  (cl:format cl:nil "int32 id~%string region~%float32 temperatura~%float32 humedad~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IoTSensor>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'region))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IoTSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'IoTSensor
    (cl:cons ':id (id msg))
    (cl:cons ':region (region msg))
    (cl:cons ':temperatura (temperatura msg))
    (cl:cons ':humedad (humedad msg))
))
