; Auto-generated. Do not edit!


(cl:in-package mouse_reader-msg)


;//! \htmlinclude mouse.msg.html

(cl:defclass <mouse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (xy_asukoht
    :reader xy_asukoht
    :initarg :xy_asukoht
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (mouse_click
    :reader mouse_click
    :initarg :mouse_click
    :type cl:string
    :initform "")
   (mouse_bool
    :reader mouse_bool
    :initarg :mouse_bool
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mouse (<mouse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mouse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mouse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mouse_reader-msg:<mouse> is deprecated: use mouse_reader-msg:mouse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:header-val is deprecated.  Use mouse_reader-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'xy_asukoht-val :lambda-list '(m))
(cl:defmethod xy_asukoht-val ((m <mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:xy_asukoht-val is deprecated.  Use mouse_reader-msg:xy_asukoht instead.")
  (xy_asukoht m))

(cl:ensure-generic-function 'mouse_click-val :lambda-list '(m))
(cl:defmethod mouse_click-val ((m <mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:mouse_click-val is deprecated.  Use mouse_reader-msg:mouse_click instead.")
  (mouse_click m))

(cl:ensure-generic-function 'mouse_bool-val :lambda-list '(m))
(cl:defmethod mouse_bool-val ((m <mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:mouse_bool-val is deprecated.  Use mouse_reader-msg:mouse_bool instead.")
  (mouse_bool m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mouse>) ostream)
  "Serializes a message object of type '<mouse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xy_asukoht) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mouse_click))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mouse_click))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mouse_bool) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mouse>) istream)
  "Deserializes a message object of type '<mouse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xy_asukoht) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_click) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mouse_click) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'mouse_bool) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mouse>)))
  "Returns string type for a message object of type '<mouse>"
  "mouse_reader/mouse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mouse)))
  "Returns string type for a message object of type 'mouse"
  "mouse_reader/mouse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mouse>)))
  "Returns md5sum for a message object of type '<mouse>"
  "8965cc635db3991b191e85ed23581bbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mouse)))
  "Returns md5sum for a message object of type 'mouse"
  "8965cc635db3991b191e85ed23581bbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mouse>)))
  "Returns full string definition for message of type '<mouse>"
  (cl:format cl:nil "Header header~%~%# Key code as defined in linux/inupt.h~%geometry_msgs/Point32 xy_asukoht~%~%# 'True' if key was pressed, 'False' otherwise~%string mouse_click~%bool mouse_bool~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mouse)))
  "Returns full string definition for message of type 'mouse"
  (cl:format cl:nil "Header header~%~%# Key code as defined in linux/inupt.h~%geometry_msgs/Point32 xy_asukoht~%~%# 'True' if key was pressed, 'False' otherwise~%string mouse_click~%bool mouse_bool~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mouse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xy_asukoht))
     4 (cl:length (cl:slot-value msg 'mouse_click))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mouse>))
  "Converts a ROS message object to a list"
  (cl:list 'mouse
    (cl:cons ':header (header msg))
    (cl:cons ':xy_asukoht (xy_asukoht msg))
    (cl:cons ':mouse_click (mouse_click msg))
    (cl:cons ':mouse_bool (mouse_bool msg))
))
