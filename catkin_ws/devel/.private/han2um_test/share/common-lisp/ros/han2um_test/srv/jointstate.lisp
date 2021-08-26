; Auto-generated. Do not edit!


(cl:in-package han2um_test-srv)


;//! \htmlinclude jointstate-request.msg.html

(cl:defclass <jointstate-request> (roslisp-msg-protocol:ros-message)
  ((get
    :reader get
    :initarg :get
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass jointstate-request (<jointstate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jointstate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jointstate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name han2um_test-srv:<jointstate-request> is deprecated: use han2um_test-srv:jointstate-request instead.")))

(cl:ensure-generic-function 'get-val :lambda-list '(m))
(cl:defmethod get-val ((m <jointstate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:get-val is deprecated.  Use han2um_test-srv:get instead.")
  (get m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jointstate-request>) ostream)
  "Serializes a message object of type '<jointstate-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jointstate-request>) istream)
  "Deserializes a message object of type '<jointstate-request>"
    (cl:setf (cl:slot-value msg 'get) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jointstate-request>)))
  "Returns string type for a service object of type '<jointstate-request>"
  "han2um_test/jointstateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jointstate-request)))
  "Returns string type for a service object of type 'jointstate-request"
  "han2um_test/jointstateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jointstate-request>)))
  "Returns md5sum for a message object of type '<jointstate-request>"
  "50eae85153eb979d8c8f4d321262116c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jointstate-request)))
  "Returns md5sum for a message object of type 'jointstate-request"
  "50eae85153eb979d8c8f4d321262116c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jointstate-request>)))
  "Returns full string definition for message of type '<jointstate-request>"
  (cl:format cl:nil "bool get~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jointstate-request)))
  "Returns full string definition for message of type 'jointstate-request"
  (cl:format cl:nil "bool get~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jointstate-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jointstate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'jointstate-request
    (cl:cons ':get (get msg))
))
;//! \htmlinclude jointstate-response.msg.html

(cl:defclass <jointstate-response> (roslisp-msg-protocol:ros-message)
  ((th0
    :reader th0
    :initarg :th0
    :type cl:float
    :initform 0.0)
   (th1
    :reader th1
    :initarg :th1
    :type cl:float
    :initform 0.0)
   (th2
    :reader th2
    :initarg :th2
    :type cl:float
    :initform 0.0)
   (th3
    :reader th3
    :initarg :th3
    :type cl:float
    :initform 0.0))
)

(cl:defclass jointstate-response (<jointstate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jointstate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jointstate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name han2um_test-srv:<jointstate-response> is deprecated: use han2um_test-srv:jointstate-response instead.")))

(cl:ensure-generic-function 'th0-val :lambda-list '(m))
(cl:defmethod th0-val ((m <jointstate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:th0-val is deprecated.  Use han2um_test-srv:th0 instead.")
  (th0 m))

(cl:ensure-generic-function 'th1-val :lambda-list '(m))
(cl:defmethod th1-val ((m <jointstate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:th1-val is deprecated.  Use han2um_test-srv:th1 instead.")
  (th1 m))

(cl:ensure-generic-function 'th2-val :lambda-list '(m))
(cl:defmethod th2-val ((m <jointstate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:th2-val is deprecated.  Use han2um_test-srv:th2 instead.")
  (th2 m))

(cl:ensure-generic-function 'th3-val :lambda-list '(m))
(cl:defmethod th3-val ((m <jointstate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:th3-val is deprecated.  Use han2um_test-srv:th3 instead.")
  (th3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jointstate-response>) ostream)
  "Serializes a message object of type '<jointstate-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jointstate-response>) istream)
  "Deserializes a message object of type '<jointstate-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jointstate-response>)))
  "Returns string type for a service object of type '<jointstate-response>"
  "han2um_test/jointstateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jointstate-response)))
  "Returns string type for a service object of type 'jointstate-response"
  "han2um_test/jointstateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jointstate-response>)))
  "Returns md5sum for a message object of type '<jointstate-response>"
  "50eae85153eb979d8c8f4d321262116c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jointstate-response)))
  "Returns md5sum for a message object of type 'jointstate-response"
  "50eae85153eb979d8c8f4d321262116c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jointstate-response>)))
  "Returns full string definition for message of type '<jointstate-response>"
  (cl:format cl:nil "float64 th0~%float64 th1~%float64 th2~%float64 th3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jointstate-response)))
  "Returns full string definition for message of type 'jointstate-response"
  (cl:format cl:nil "float64 th0~%float64 th1~%float64 th2~%float64 th3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jointstate-response>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jointstate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'jointstate-response
    (cl:cons ':th0 (th0 msg))
    (cl:cons ':th1 (th1 msg))
    (cl:cons ':th2 (th2 msg))
    (cl:cons ':th3 (th3 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'jointstate)))
  'jointstate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'jointstate)))
  'jointstate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jointstate)))
  "Returns string type for a service object of type '<jointstate>"
  "han2um_test/jointstate")