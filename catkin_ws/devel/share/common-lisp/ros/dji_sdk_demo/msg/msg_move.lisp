; Auto-generated. Do not edit!


(cl:in-package dji_sdk_demo-msg)


;//! \htmlinclude msg_move.msg.html

(cl:defclass <msg_move> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass msg_move (<msg_move>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_move>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_move)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk_demo-msg:<msg_move> is deprecated: use dji_sdk_demo-msg:msg_move instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <msg_move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk_demo-msg:status-val is deprecated.  Use dji_sdk_demo-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_move>) ostream)
  "Serializes a message object of type '<msg_move>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_move>) istream)
  "Deserializes a message object of type '<msg_move>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_move>)))
  "Returns string type for a message object of type '<msg_move>"
  "dji_sdk_demo/msg_move")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_move)))
  "Returns string type for a message object of type 'msg_move"
  "dji_sdk_demo/msg_move")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_move>)))
  "Returns md5sum for a message object of type '<msg_move>"
  "8695a687dd99fd6c4e83bb483ce1c397")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_move)))
  "Returns md5sum for a message object of type 'msg_move"
  "8695a687dd99fd6c4e83bb483ce1c397")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_move>)))
  "Returns full string definition for message of type '<msg_move>"
  (cl:format cl:nil "char status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_move)))
  "Returns full string definition for message of type 'msg_move"
  (cl:format cl:nil "char status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_move>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_move>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_move
    (cl:cons ':status (status msg))
))
