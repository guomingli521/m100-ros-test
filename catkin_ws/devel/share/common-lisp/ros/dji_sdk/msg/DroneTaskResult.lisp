; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude DroneTaskResult.msg.html

(cl:defclass <DroneTaskResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DroneTaskResult (<DroneTaskResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneTaskResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneTaskResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<DroneTaskResult> is deprecated: use dji_sdk-msg:DroneTaskResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DroneTaskResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:result-val is deprecated.  Use dji_sdk-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneTaskResult>) ostream)
  "Serializes a message object of type '<DroneTaskResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneTaskResult>) istream)
  "Deserializes a message object of type '<DroneTaskResult>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneTaskResult>)))
  "Returns string type for a message object of type '<DroneTaskResult>"
  "dji_sdk/DroneTaskResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneTaskResult)))
  "Returns string type for a message object of type 'DroneTaskResult"
  "dji_sdk/DroneTaskResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneTaskResult>)))
  "Returns md5sum for a message object of type '<DroneTaskResult>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneTaskResult)))
  "Returns md5sum for a message object of type 'DroneTaskResult"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneTaskResult>)))
  "Returns full string definition for message of type '<DroneTaskResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneTaskResult)))
  "Returns full string definition for message of type 'DroneTaskResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneTaskResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneTaskResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneTaskResult
    (cl:cons ':result (result msg))
))
