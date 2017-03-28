
(cl:in-package :asdf)

(defsystem "vedio-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "xy" :depends-on ("_package_xy"))
    (:file "_package_xy" :depends-on ("_package"))
  ))