
(cl:in-package :asdf)

(defsystem "dji_sdk_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "uart" :depends-on ("_package_uart"))
    (:file "_package_uart" :depends-on ("_package"))
  ))