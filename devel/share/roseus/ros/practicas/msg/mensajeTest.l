;; Auto-generated. Do not edit!


(when (boundp 'practicas::mensajeTest)
  (if (not (find-package "PRACTICAS"))
    (make-package "PRACTICAS"))
  (shadow 'mensajeTest (find-package "PRACTICAS")))
(unless (find-package "PRACTICAS::MENSAJETEST")
  (make-package "PRACTICAS::MENSAJETEST"))

(in-package "ROS")
;;//! \htmlinclude mensajeTest.msg.html


(defclass practicas::mensajeTest
  :super ros::object
  :slots (_numero ))

(defmethod practicas::mensajeTest
  (:init
   (&key
    ((:numero __numero) 0)
    )
   (send-super :init)
   (setq _numero (round __numero))
   self)
  (:numero
   (&optional __numero)
   (if __numero (setq _numero __numero)) _numero)
  (:serialization-length
   ()
   (+
    ;; uint32 _numero
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _numero
       (write-long _numero s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _numero
     (setq _numero (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get practicas::mensajeTest :md5sum-) "b32de927a501baab19ed61de1e6e9fe3")
(setf (get practicas::mensajeTest :datatype-) "practicas/mensajeTest")
(setf (get practicas::mensajeTest :definition-)
      "uint32 numero
")



(provide :practicas/mensajeTest "b32de927a501baab19ed61de1e6e9fe3")


