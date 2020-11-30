;; Auto-generated. Do not edit!


(when (boundp 'holamundo::IoTSensor)
  (if (not (find-package "HOLAMUNDO"))
    (make-package "HOLAMUNDO"))
  (shadow 'IoTSensor (find-package "HOLAMUNDO")))
(unless (find-package "HOLAMUNDO::IOTSENSOR")
  (make-package "HOLAMUNDO::IOTSENSOR"))

(in-package "ROS")
;;//! \htmlinclude IoTSensor.msg.html


(defclass holamundo::IoTSensor
  :super ros::object
  :slots (_id _region _temperatura _humedad ))

(defmethod holamundo::IoTSensor
  (:init
   (&key
    ((:id __id) 0)
    ((:region __region) "")
    ((:temperatura __temperatura) 0.0)
    ((:humedad __humedad) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _region (string __region))
   (setq _temperatura (float __temperatura))
   (setq _humedad (float __humedad))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:region
   (&optional __region)
   (if __region (setq _region __region)) _region)
  (:temperatura
   (&optional __temperatura)
   (if __temperatura (setq _temperatura __temperatura)) _temperatura)
  (:humedad
   (&optional __humedad)
   (if __humedad (setq _humedad __humedad)) _humedad)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _region
    4 (length _region)
    ;; float32 _temperatura
    4
    ;; float32 _humedad
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _region
       (write-long (length _region) s) (princ _region s)
     ;; float32 _temperatura
       (sys::poke _temperatura (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _humedad
       (sys::poke _humedad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _region
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _region (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _temperatura
     (setq _temperatura (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _humedad
     (setq _humedad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get holamundo::IoTSensor :md5sum-) "bc380b2aacba9ecd7c71cb52d71dc748")
(setf (get holamundo::IoTSensor :datatype-) "holamundo/IoTSensor")
(setf (get holamundo::IoTSensor :definition-)
      "int32 id
string region
float32 temperatura
float32 humedad
")



(provide :holamundo/IoTSensor "bc380b2aacba9ecd7c71cb52d71dc748")


