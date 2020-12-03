;; Auto-generated. Do not edit!


(when (boundp 'practicas::tipo_servicio)
  (if (not (find-package "PRACTICAS"))
    (make-package "PRACTICAS"))
  (shadow 'tipo_servicio (find-package "PRACTICAS")))
(unless (find-package "PRACTICAS::TIPO_SERVICIO")
  (make-package "PRACTICAS::TIPO_SERVICIO"))
(unless (find-package "PRACTICAS::TIPO_SERVICIOREQUEST")
  (make-package "PRACTICAS::TIPO_SERVICIOREQUEST"))
(unless (find-package "PRACTICAS::TIPO_SERVICIORESPONSE")
  (make-package "PRACTICAS::TIPO_SERVICIORESPONSE"))

(in-package "ROS")





(defclass practicas::tipo_servicioRequest
  :super ros::object
  :slots (_argumento1 _argumento2 ))

(defmethod practicas::tipo_servicioRequest
  (:init
   (&key
    ((:argumento1 __argumento1) 0)
    ((:argumento2 __argumento2) 0)
    )
   (send-super :init)
   (setq _argumento1 (round __argumento1))
   (setq _argumento2 (round __argumento2))
   self)
  (:argumento1
   (&optional __argumento1)
   (if __argumento1 (setq _argumento1 __argumento1)) _argumento1)
  (:argumento2
   (&optional __argumento2)
   (if __argumento2 (setq _argumento2 __argumento2)) _argumento2)
  (:serialization-length
   ()
   (+
    ;; int64 _argumento1
    8
    ;; int64 _argumento2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _argumento1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _argumento1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _argumento1) (= (length (_argumento1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_argumento1 . bv) 0) 0) s)
              (write-long (ash (elt (_argumento1 . bv) 1) -1) s))
             ((and (class _argumento1) (= (length (_argumento1 . bv)) 1)) ;; big1
              (write-long (elt (_argumento1 . bv) 0) s)
              (write-long (if (>= _argumento1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _argumento1 s)(write-long (if (>= _argumento1 0) 0 #xffffffff) s)))
     ;; int64 _argumento2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _argumento2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _argumento2) (= (length (_argumento2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_argumento2 . bv) 0) 0) s)
              (write-long (ash (elt (_argumento2 . bv) 1) -1) s))
             ((and (class _argumento2) (= (length (_argumento2 . bv)) 1)) ;; big1
              (write-long (elt (_argumento2 . bv) 0) s)
              (write-long (if (>= _argumento2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _argumento2 s)(write-long (if (>= _argumento2 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _argumento1
#+(or :alpha :irix6 :x86_64)
      (setf _argumento1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _argumento1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _argumento2
#+(or :alpha :irix6 :x86_64)
      (setf _argumento2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _argumento2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass practicas::tipo_servicioResponse
  :super ros::object
  :slots (_resultado1 ))

(defmethod practicas::tipo_servicioResponse
  (:init
   (&key
    ((:resultado1 __resultado1) 0)
    )
   (send-super :init)
   (setq _resultado1 (round __resultado1))
   self)
  (:resultado1
   (&optional __resultado1)
   (if __resultado1 (setq _resultado1 __resultado1)) _resultado1)
  (:serialization-length
   ()
   (+
    ;; int64 _resultado1
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _resultado1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _resultado1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _resultado1) (= (length (_resultado1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_resultado1 . bv) 0) 0) s)
              (write-long (ash (elt (_resultado1 . bv) 1) -1) s))
             ((and (class _resultado1) (= (length (_resultado1 . bv)) 1)) ;; big1
              (write-long (elt (_resultado1 . bv) 0) s)
              (write-long (if (>= _resultado1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _resultado1 s)(write-long (if (>= _resultado1 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _resultado1
#+(or :alpha :irix6 :x86_64)
      (setf _resultado1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _resultado1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass practicas::tipo_servicio
  :super ros::object
  :slots ())

(setf (get practicas::tipo_servicio :md5sum-) "a979325dbca13dacf90a487ef6a5bb09")
(setf (get practicas::tipo_servicio :datatype-) "practicas/tipo_servicio")
(setf (get practicas::tipo_servicio :request) practicas::tipo_servicioRequest)
(setf (get practicas::tipo_servicio :response) practicas::tipo_servicioResponse)

(defmethod practicas::tipo_servicioRequest
  (:response () (instance practicas::tipo_servicioResponse :init)))

(setf (get practicas::tipo_servicioRequest :md5sum-) "a979325dbca13dacf90a487ef6a5bb09")
(setf (get practicas::tipo_servicioRequest :datatype-) "practicas/tipo_servicioRequest")
(setf (get practicas::tipo_servicioRequest :definition-)
      "int64 argumento1
int64 argumento2
---
int64 resultado1
")

(setf (get practicas::tipo_servicioResponse :md5sum-) "a979325dbca13dacf90a487ef6a5bb09")
(setf (get practicas::tipo_servicioResponse :datatype-) "practicas/tipo_servicioResponse")
(setf (get practicas::tipo_servicioResponse :definition-)
      "int64 argumento1
int64 argumento2
---
int64 resultado1
")



(provide :practicas/tipo_servicio "a979325dbca13dacf90a487ef6a5bb09")


