; Auto-generated. Do not edit!


(cl:in-package vedio-msg)


;//! \htmlinclude msg_led.msg.html

(cl:defclass <msg_led> (roslisp-msg-protocol:ros-message)
  ((right
    :reader right
    :initarg :right
    :type cl:integer
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:integer
    :initform 0))
)

(cl:defclass msg_led (<msg_led>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_led>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_led)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vedio-msg:<msg_led> is deprecated: use vedio-msg:msg_led instead.")))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <msg_led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vedio-msg:right-val is deprecated.  Use vedio-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <msg_led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vedio-msg:left-val is deprecated.  Use vedio-msg:left instead.")
  (left m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_led>) ostream)
  "Serializes a message object of type '<msg_led>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_led>) istream)
  "Deserializes a message object of type '<msg_led>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_led>)))
  "Returns string type for a message object of type '<msg_led>"
  "vedio/msg_led")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_led)))
  "Returns string type for a message object of type 'msg_led"
  "vedio/msg_led")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_led>)))
  "Returns md5sum for a message object of type '<msg_led>"
  "078c84f9568e7559c51e2f26d02eed38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_led)))
  "Returns md5sum for a message object of type 'msg_led"
  "078c84f9568e7559c51e2f26d02eed38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_led>)))
  "Returns full string definition for message of type '<msg_led>"
  (cl:format cl:nil "char right~%char left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_led)))
  "Returns full string definition for message of type 'msg_led"
  (cl:format cl:nil "char right~%char left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_led>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_led>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_led
    (cl:cons ':right (right msg))
    (cl:cons ':left (left msg))
))
