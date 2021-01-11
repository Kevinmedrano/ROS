;; Auto-generated. Do not edit!


(when (boundp 'trabajo::multiplicador)
  (if (not (find-package "TRABAJO"))
    (make-package "TRABAJO"))
  (shadow 'multiplicador (find-package "TRABAJO")))
(unless (find-package "TRABAJO::MULTIPLICADOR")
  (make-package "TRABAJO::MULTIPLICADOR"))
(unless (find-package "TRABAJO::MULTIPLICADORREQUEST")
  (make-package "TRABAJO::MULTIPLICADORREQUEST"))
(unless (find-package "TRABAJO::MULTIPLICADORRESPONSE")
  (make-package "TRABAJO::MULTIPLICADORRESPONSE"))

(in-package "ROS")





(defclass trabajo::multiplicadorRequest
  :super ros::object
  :slots (_entrada ))

(defmethod trabajo::multiplicadorRequest
  (:init
   (&key
    ((:entrada __entrada) 0)
    )
   (send-super :init)
   (setq _entrada (round __entrada))
   self)
  (:entrada
   (&optional __entrada)
   (if __entrada (setq _entrada __entrada)) _entrada)
  (:serialization-length
   ()
   (+
    ;; int32 _entrada
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _entrada
       (write-long _entrada s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _entrada
     (setq _entrada (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass trabajo::multiplicadorResponse
  :super ros::object
  :slots (_resultado ))

(defmethod trabajo::multiplicadorResponse
  (:init
   (&key
    ((:resultado __resultado) 0)
    )
   (send-super :init)
   (setq _resultado (round __resultado))
   self)
  (:resultado
   (&optional __resultado)
   (if __resultado (setq _resultado __resultado)) _resultado)
  (:serialization-length
   ()
   (+
    ;; int32 _resultado
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _resultado
       (write-long _resultado s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _resultado
     (setq _resultado (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass trabajo::multiplicador
  :super ros::object
  :slots ())

(setf (get trabajo::multiplicador :md5sum-) "6ce0274a72a6c619811bedbdd2184acd")
(setf (get trabajo::multiplicador :datatype-) "trabajo/multiplicador")
(setf (get trabajo::multiplicador :request) trabajo::multiplicadorRequest)
(setf (get trabajo::multiplicador :response) trabajo::multiplicadorResponse)

(defmethod trabajo::multiplicadorRequest
  (:response () (instance trabajo::multiplicadorResponse :init)))

(setf (get trabajo::multiplicadorRequest :md5sum-) "6ce0274a72a6c619811bedbdd2184acd")
(setf (get trabajo::multiplicadorRequest :datatype-) "trabajo/multiplicadorRequest")
(setf (get trabajo::multiplicadorRequest :definition-)
      "int32 entrada
---
int32 resultado
")

(setf (get trabajo::multiplicadorResponse :md5sum-) "6ce0274a72a6c619811bedbdd2184acd")
(setf (get trabajo::multiplicadorResponse :datatype-) "trabajo/multiplicadorResponse")
(setf (get trabajo::multiplicadorResponse :definition-)
      "int32 entrada
---
int32 resultado
")



(provide :trabajo/multiplicador "6ce0274a72a6c619811bedbdd2184acd")


