
(cl:in-package :asdf)

(defsystem "turtle_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msgs" :depends-on ("_package_msgs"))
    (:file "_package_msgs" :depends-on ("_package"))
  ))