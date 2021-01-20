; Auto-generated. Do not edit!


(cl:in-package cucumber-srv)


;//! \htmlinclude msgs-request.msg.html

(cl:defclass <msgs-request> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:float
    :initform 0.0)
   (val2
    :reader val2
    :initarg :val2
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgs-request (<msgs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cucumber-srv:<msgs-request> is deprecated: use cucumber-srv:msgs-request instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <msgs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cucumber-srv:val-val is deprecated.  Use cucumber-srv:val instead.")
  (val m))

(cl:ensure-generic-function 'val2-val :lambda-list '(m))
(cl:defmethod val2-val ((m <msgs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cucumber-srv:val2-val is deprecated.  Use cucumber-srv:val2 instead.")
  (val2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgs-request>) ostream)
  "Serializes a message object of type '<msgs-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'val2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgs-request>) istream)
  "Deserializes a message object of type '<msgs-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgs-request>)))
  "Returns string type for a service object of type '<msgs-request>"
  "cucumber/msgsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgs-request)))
  "Returns string type for a service object of type 'msgs-request"
  "cucumber/msgsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgs-request>)))
  "Returns md5sum for a message object of type '<msgs-request>"
  "851ebf8bfb1ad34675c9d5bed81ecf25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgs-request)))
  "Returns md5sum for a message object of type 'msgs-request"
  "851ebf8bfb1ad34675c9d5bed81ecf25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgs-request>)))
  "Returns full string definition for message of type '<msgs-request>"
  (cl:format cl:nil "float32 val~%float32 val2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgs-request)))
  "Returns full string definition for message of type 'msgs-request"
  (cl:format cl:nil "float32 val~%float32 val2~%~%~%"))
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
    :type cl:float
    :initform 0.0)
   (ans2
    :reader ans2
    :initarg :ans2
    :type cl:float
    :initform 0.0)
   (ans3
    :reader ans3
    :initarg :ans3
    :type cl:float
    :initform 0.0)
   (ans4
    :reader ans4
    :initarg :ans4
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgs-response (<msgs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cucumber-srv:<msgs-response> is deprecated: use cucumber-srv:msgs-response instead.")))

(cl:ensure-generic-function 'ans-val :lambda-list '(m))
(cl:defmethod ans-val ((m <msgs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cucumber-srv:ans-val is deprecated.  Use cucumber-srv:ans instead.")
  (ans m))

(cl:ensure-generic-function 'ans2-val :lambda-list '(m))
(cl:defmethod ans2-val ((m <msgs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cucumber-srv:ans2-val is deprecated.  Use cucumber-srv:ans2 instead.")
  (ans2 m))

(cl:ensure-generic-function 'ans3-val :lambda-list '(m))
(cl:defmethod ans3-val ((m <msgs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cucumber-srv:ans3-val is deprecated.  Use cucumber-srv:ans3 instead.")
  (ans3 m))

(cl:ensure-generic-function 'ans4-val :lambda-list '(m))
(cl:defmethod ans4-val ((m <msgs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cucumber-srv:ans4-val is deprecated.  Use cucumber-srv:ans4 instead.")
  (ans4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgs-response>) ostream)
  "Serializes a message object of type '<msgs-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ans2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ans3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ans4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgs-response>) istream)
  "Deserializes a message object of type '<msgs-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ans) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ans2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ans3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ans4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgs-response>)))
  "Returns string type for a service object of type '<msgs-response>"
  "cucumber/msgsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgs-response)))
  "Returns string type for a service object of type 'msgs-response"
  "cucumber/msgsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgs-response>)))
  "Returns md5sum for a message object of type '<msgs-response>"
  "851ebf8bfb1ad34675c9d5bed81ecf25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgs-response)))
  "Returns md5sum for a message object of type 'msgs-response"
  "851ebf8bfb1ad34675c9d5bed81ecf25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgs-response>)))
  "Returns full string definition for message of type '<msgs-response>"
  (cl:format cl:nil "float32 ans~%float32 ans2~%float32 ans3~%float32 ans4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgs-response)))
  "Returns full string definition for message of type 'msgs-response"
  (cl:format cl:nil "float32 ans~%float32 ans2~%float32 ans3~%float32 ans4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgs-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'msgs-response
    (cl:cons ':ans (ans msg))
    (cl:cons ':ans2 (ans2 msg))
    (cl:cons ':ans3 (ans3 msg))
    (cl:cons ':ans4 (ans4 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'msgs)))
  'msgs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'msgs)))
  'msgs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgs)))
  "Returns string type for a service object of type '<msgs>"
  "cucumber/msgs")