
(cl:in-package :asdf)

(defsystem "practicas-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mensajeTest" :depends-on ("_package_mensajeTest"))
    (:file "_package_mensajeTest" :depends-on ("_package"))
  ))