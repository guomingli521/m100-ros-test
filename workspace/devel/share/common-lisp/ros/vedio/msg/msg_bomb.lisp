; Auto-generated. Do not edit!


(cl:in-package vedio-msg)


;//! \htmlinclude msg_bomb.msg.html

(cl:defclass <msg_bomb> (roslisp-msg-protocol:ros-message)
  ((hit
    :reader hit
    :initarg :hit
    :type cl:integer
    :initform 0))
)

(cl:defclass msg_bomb (<msg_bomb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_bomb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_bomb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vedio-msg:<msg_bomb> is deprecated: use vedio-msg:msg_bomb instead.")))

(cl:ensure-generic-function 'hit-val :lambda-list '(m))
(cl:defmethod hit-val ((m <msg_bomb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vedio-msg:hit-val is deprecated.  Use vedio-msg:hit instead.")
  (hit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_bomb>) ostream)
  "Serializes a message object of type '<msg_bomb>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hit)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_bomb>) istream)
  "Deserializes a message object of type '<msg_bomb>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hit)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_bomb>)))
  "Returns string type for a message object of type '<msg_bomb>"
  "vedio/msg_bomb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_bomb)))
  "Returns string type for a message object of type 'msg_bomb"
  "vedio/msg_bomb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_bomb>)))
  "Returns md5sum for a message object of type '<msg_bomb>"
  "769aaac581ab49dcf02c605bee12ba0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_bomb)))
  "Returns md5sum for a message object of type 'msg_bomb"
  "769aaac581ab49dcf02c605bee12ba0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_bomb>)))
  "Returns full string definition for message of type '<msg_bomb>"
  (cl:format cl:nil "char hit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_bomb)))
  "Returns full string definition for message of type 'msg_bomb"
  (cl:format cl:nil "char hit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_bomb>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_bomb>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_bomb
    (cl:cons ':hit (hit msg))
))
