; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude WaypointNavigationActionGoal.msg.html

(cl:defclass <WaypointNavigationActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type dji_sdk-msg:WaypointNavigationGoal
    :initform (cl:make-instance 'dji_sdk-msg:WaypointNavigationGoal)))
)

(cl:defclass WaypointNavigationActionGoal (<WaypointNavigationActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointNavigationActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointNavigationActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<WaypointNavigationActionGoal> is deprecated: use dji_sdk-msg:WaypointNavigationActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointNavigationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:header-val is deprecated.  Use dji_sdk-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <WaypointNavigationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:goal_id-val is deprecated.  Use dji_sdk-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <WaypointNavigationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:goal-val is deprecated.  Use dji_sdk-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointNavigationActionGoal>) ostream)
  "Serializes a message object of type '<WaypointNavigationActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointNavigationActionGoal>) istream)
  "Deserializes a message object of type '<WaypointNavigationActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointNavigationActionGoal>)))
  "Returns string type for a message object of type '<WaypointNavigationActionGoal>"
  "dji_sdk/WaypointNavigationActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointNavigationActionGoal)))
  "Returns string type for a message object of type 'WaypointNavigationActionGoal"
  "dji_sdk/WaypointNavigationActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointNavigationActionGoal>)))
  "Returns md5sum for a message object of type '<WaypointNavigationActionGoal>"
  "49f49517b930bbcd0bbed351eb82f94f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointNavigationActionGoal)))
  "Returns md5sum for a message object of type 'WaypointNavigationActionGoal"
  "49f49517b930bbcd0bbed351eb82f94f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointNavigationActionGoal>)))
  "Returns full string definition for message of type '<WaypointNavigationActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%WaypointNavigationGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: dji_sdk/WaypointNavigationGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%WaypointList waypoint_list~%~%================================================================================~%MSG: dji_sdk/WaypointList~%Waypoint[] waypoint_list~%~%================================================================================~%MSG: dji_sdk/Waypoint~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%#heading is in [-180,180]~%int16 heading ~%#stay time is in second~%uint16 staytime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointNavigationActionGoal)))
  "Returns full string definition for message of type 'WaypointNavigationActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%WaypointNavigationGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: dji_sdk/WaypointNavigationGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%WaypointList waypoint_list~%~%================================================================================~%MSG: dji_sdk/WaypointList~%Waypoint[] waypoint_list~%~%================================================================================~%MSG: dji_sdk/Waypoint~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%#heading is in [-180,180]~%int16 heading ~%#stay time is in second~%uint16 staytime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointNavigationActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointNavigationActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointNavigationActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
