; Auto-generated. Do not edit!


(cl:in-package turtle_control-srv)


;//! \htmlinclude msgs-request.msg.html

(cl:defclass <msgs-request> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:integer
    :initform 0)
   (val2
    :reader val2
    :initarg :val2
    :type cl:integer
    :initform 0))
)

(cl:defclass msgs-request (<msgs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<msgs-request> is deprecated: use turtle_control-srv:msgs-request instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <msgs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:val-val is deprecated.  Use turtle_control-srv:val instead.")
  (val m))

(cl:ensure-generic-function 'val2-val :lambda-list '(m))
(cl:defmethod val2-val ((m <msgs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:val2-val is deprecated.  Use turtle_control-srv:val2 instead.")
  (val2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgs-request>) ostream)
  "Serializes a message object of type '<msgs-request>"
  (cl:let* ((signed (cl:slot-value msg 'val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'val2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgs-request>) istream)
  "Deserializes a message object of type '<msgs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgs-request>)))
  "Returns string type for a service object of type '<msgs-request>"
  "turtle_control/msgsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgs-request)))
  "Returns string type for a service object of type 'msgs-request"
  "turtle_control/msgsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgs-request>)))
  "Returns md5sum for a message object of type '<msgs-request>"
  "0cd72adfcfa06c3a7a00d9b600768e39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgs-request)))
  "Returns md5sum for a message object of type 'msgs-request"
  "0cd72adfcfa06c3a7a00d9b600768e39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgs-request>)))
  "Returns full string definition for message of type '<msgs-request>"
  (cl:format cl:nil "int32 val~%int32 val2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgs-request)))
  "Returns full string definition for message of type 'msgs-request"
  (cl:format cl:nil "int32 val~%int32 val2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgs-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'msgs-request
    (cl:cons ':val (val msg))
    (cl:cons ':val2 (val2 msg))
))
;//! \htmlinclude msgs-response.msg.html

(cl:defclass <msgs-response> (roslisp-msg-protocol:ros-message)
  ((ans
    :reader ans
    :initarg :ans
    :type cl:integer
    :initform 0)
   (ans2
    :reader ans2
    :initarg :ans2
    :type cl:integer
    :initform 0))
)

(cl:defclass msgs-response (<msgs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<msgs-response> is deprecated: use turtle_control-srv:msgs-response instead.")))

(cl:ensure-generic-function 'ans-val :lambda-list '(m))
(cl:defmethod ans-val ((m <msgs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:ans-val is deprecated.  Use turtle_control-srv:ans instead.")
  (ans m))

(cl:ensure-generic-function 'ans2-val :lambda-list '(m))
(cl:defmethod ans2-val ((m <msgs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:ans2-val is deprecated.  Use turtle_control-srv:ans2 instead.")
  (ans2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgs-response>) ostream)
  "Serializes a message object of type '<msgs-response>"
  (cl:let* ((signed (cl:slot-value msg 'ans)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ans2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgs-response>) istream)
  "Deserializes a message object of type '<msgs-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ans) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ans2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgs-response>)))
  "Returns string type for a service object of type '<msgs-response>"
  "turtle_control/msgsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgs-response)))
  "Returns string type for a service object of type 'msgs-response"
  "turtle_control/msgsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgs-response>)))
  "Returns md5sum for a message object of type '<msgs-response>"
  "0cd72adfcfa06c3a7a00d9b600768e39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgs-response)))
  "Returns md5sum for a message object of type 'msgs-response"
  "0cd72adfcfa06c3a7a00d9b600768e39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgs-response>)))
  "Returns full string definition for message of type '<msgs-response>"
  (cl:format cl:nil "int32 ans~%int32 ans2~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgs-response)))
  "Returns full string definition for message of type 'msgs-response"
  (cl:format cl:nil "int32 ans~%int32 ans2~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgs-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'msgs-response
    (cl:cons ':ans (ans msg))
    (cl:cons ':ans2 (ans2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'msgs)))
  'msgs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'msgs)))
  'msgs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgs)))
  "Returns string type for a service object of type '<msgs>"
  "turtle_control/msgs")