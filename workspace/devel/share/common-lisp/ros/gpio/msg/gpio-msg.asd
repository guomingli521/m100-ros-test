
(cl:in-package :asdf)

(defsystem "gpio-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msg_gpio" :depends-on ("_package_msg_gpio"))
    (:file "_package_msg_gpio" :depends-on ("_package"))
  ))