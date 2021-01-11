;; Auto-generated. Do not edit!


(when (boundp 'trabajo::usuario)
  (if (not (find-package "TRABAJO"))
    (make-package "TRABAJO"))
  (shadow 'usuario (find-package "TRABAJO")))
(unless (find-package "TRABAJO::USUARIO")
  (make-package "TRABAJO::USUARIO"))

(in-package "ROS")
;;//! \htmlinclude usuario.msg.html


(defclass trabajo::usuario
  :super ros::object
  :slots (_infPersonal _emocion _posicion ))

(defmethod trabajo::usuario
  (:init
   (&key
    ((:infPersonal __infPersonal) (instance trabajo::inf_personal_usuario :init))
    ((:emocion __emocion) "")
    ((:posicion __posicion) (instance trabajo::pos_usuario :init))
    )
   (send-super :init)
   (setq _infPersonal __infPersonal)
   (setq _emocion (string __emocion))
   (setq _posicion __posicion)
   self)
  (:infPersonal
   (&rest __infPersonal)
   (if (keywordp (car __infPersonal))
       (send* _infPersonal __infPersonal)
     (progn
       (if __infPersonal (setq _infPersonal (car __infPersonal)))
       _infPersonal)))
  (:emocion
   (&optional __emocion)
   (if __emocion (setq _emocion __emocion)) _emocion)
  (:posicion
   (&rest __posicion)
   (if (keywordp (car __posicion))
       (send* _posicion __posicion)
     (progn
       (if __posicion (setq _posicion (car __posicion)))
       _posicion)))
  (:serialization-length
   ()
   (+
    ;; trabajo/inf_personal_usuario _infPersonal
    (send _infPersonal :serialization-length)
    ;; string _emocion
    4 (length _emocion)
    ;; trabajo/pos_usuario _posicion
    (send _posicion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trabajo/inf_personal_usuario _infPersonal
       (send _infPersonal :serialize s)
     ;; string _emocion
       (write-long (length _emocion) s) (princ _emocion s)
     ;; trabajo/pos_usuario _posicion
       (send _posicion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trabajo/inf_personal_usuario _infPersonal
     (send _infPersonal :deserialize buf ptr-) (incf ptr- (send _infPersonal :serialization-length))
   ;; string _emocion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emocion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trabajo/pos_usuario _posicion
     (send _posicion :deserialize buf ptr-) (incf ptr- (send _posicion :serialization-length))
   ;;
   self)
  )

(setf (get trabajo::usuario :md5sum-) "8dd70dbd6f089d82b1ef0dabb7d6bd3b")
(setf (get trabajo::usuario :datatype-) "trabajo/usuario")
(setf (get trabajo::usuario :definition-)
      "inf_personal_usuario infPersonal
string emocion
pos_usuario posicion
================================================================================
MSG: trabajo/inf_personal_usuario
string nombre
int16 edad
string[] idiomas
================================================================================
MSG: trabajo/pos_usuario
int16 x
int16 y
int16 z
")



(provide :trabajo/usuario "8dd70dbd6f089d82b1ef0dabb7d6bd3b")


