; Auto-generated. Do not edit!


(cl:in-package dji_sdk_demo-msg)


;//! \htmlinclude uart.msg.html

(cl:defclass <uart> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass uart (<uart>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <uart>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'uart)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk_demo-msg:<uart> is deprecated: use dji_sdk_demo-msg:uart instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <uart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk_demo-msg:flag-val is deprecated.  Use dji_sdk_demo-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <uart>) ostream)
  "Serializes a message object of type '<uart>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <uart>) istream)
  "Deserializes a message object of type '<uart>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<uart>)))
  "Returns string type for a message object of type '<uart>"
  "dji_sdk_demo/uart")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'uart)))
  "Returns string type for a message object of type 'uart"
  "dji_sdk_demo/uart")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<uart>)))
  "Returns md5sum for a message object of type '<uart>"
  "aa0dbc5596ec12974ea3a17a045b36e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'uart)))
  "Returns md5sum for a message object of type 'uart"
  "aa0dbc5596ec12974ea3a17a045b36e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<uart>)))
  "Returns full string definition for message of type '<uart>"
  (cl:format cl:nil "int32 flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'uart)))
  "Returns full string definition for message of type 'uart"
  (cl:format cl:nil "int32 flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <uart>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <uart>))
  "Converts a ROS message object to a list"
  (cl:list 'uart
    (cl:cons ':flag (flag msg))
))
