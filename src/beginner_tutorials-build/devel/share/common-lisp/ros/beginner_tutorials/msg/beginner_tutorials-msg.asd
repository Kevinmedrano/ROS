
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mensaje" :depends-on ("_package_mensaje"))
    (:file "_package_mensaje" :depends-on ("_package"))
  ))