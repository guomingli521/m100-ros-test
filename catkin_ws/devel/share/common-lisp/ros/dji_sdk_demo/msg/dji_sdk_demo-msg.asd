
(cl:in-package :asdf)

(defsystem "dji_sdk_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msg_move" :depends-on ("_package_msg_move"))
    (:file "_package_msg_move" :depends-on ("_package"))
    (:file "uart" :depends-on ("_package_uart"))
    (:file "_package_uart" :depends-on ("_package"))
    (:file "msg_vision" :depends-on ("_package_msg_vision"))
    (:file "_package_msg_vision" :depends-on ("_package"))
  ))