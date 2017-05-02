; Auto-generated. Do not edit!


(cl:in-package gpio-msg)


;//! \htmlinclude msg_gpio.msg.html

(cl:defclass <msg_gpio> (roslisp-msg-protocol:ros-message)
  ((gpio
    :reader gpio
    :initarg :gpio
    :type cl:integer
    :initform 0))
)

(cl:defclass msg_gpio (<msg_gpio>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_gpio>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_gpio)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gpio-msg:<msg_gpio> is deprecated: use gpio-msg:msg_gpio instead.")))

(cl:ensure-generic-function 'gpio-val :lambda-list '(m))
(cl:defmethod gpio-val ((m <msg_gpio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpio-msg:gpio-val is deprecated.  Use gpio-msg:gpio instead.")
  (gpio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_gpio>) ostream)
  "Serializes a message object of type '<msg_gpio>"
  (cl:let* ((signed (cl:slot-value msg 'gpio)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_gpio>) istream)
  "Deserializes a message object of type '<msg_gpio>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gpio) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_gpio>)))
  "Returns string type for a message object of type '<msg_gpio>"
  "gpio/msg_gpio")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_gpio)))
  "Returns string type for a message object of type 'msg_gpio"
  "gpio/msg_gpio")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_gpio>)))
  "Returns md5sum for a message object of type '<msg_gpio>"
  "fb1624e7780ede690b5b26e43231316a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_gpio)))
  "Returns md5sum for a message object of type 'msg_gpio"
  "fb1624e7780ede690b5b26e43231316a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_gpio>)))
  "Returns full string definition for message of type '<msg_gpio>"
  (cl:format cl:nil "int32 gpio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_gpio)))
  "Returns full string definition for message of type 'msg_gpio"
  (cl:format cl:nil "int32 gpio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_gpio>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_gpio>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_gpio
    (cl:cons ':gpio (gpio msg))
))
