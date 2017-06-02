
(cl:in-package :asdf)

(defsystem "vedio-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msg_xy" :depends-on ("_package_msg_xy"))
    (:file "_package_msg_xy" :depends-on ("_package"))
    (:file "xy" :depends-on ("_package_xy"))
    (:file "_package_xy" :depends-on ("_package"))
    (:file "msg_bomb" :depends-on ("_package_msg_bomb"))
    (:file "_package_msg_bomb" :depends-on ("_package"))
    (:file "msg_led" :depends-on ("_package_msg_led"))
    (:file "_package_msg_led" :depends-on ("_package"))
  ))