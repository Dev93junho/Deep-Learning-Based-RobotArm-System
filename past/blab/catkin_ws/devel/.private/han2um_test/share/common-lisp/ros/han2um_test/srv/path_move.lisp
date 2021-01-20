; Auto-generated. Do not edit!


(cl:in-package han2um_test-srv)


;//! \htmlinclude path_move-request.msg.html

(cl:defclass <path_move-request> (roslisp-msg-protocol:ros-message)
  ((fpos_x
    :reader fpos_x
    :initarg :fpos_x
    :type cl:float
    :initform 0.0)
   (fpos_y
    :reader fpos_y
    :initarg :fpos_y
    :type cl:float
    :initform 0.0)
   (fpos_z
    :reader fpos_z
    :initarg :fpos_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass path_move-request (<path_move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path_move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path_move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name han2um_test-srv:<path_move-request> is deprecated: use han2um_test-srv:path_move-request instead.")))

(cl:ensure-generic-function 'fpos_x-val :lambda-list '(m))
(cl:defmethod fpos_x-val ((m <path_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:fpos_x-val is deprecated.  Use han2um_test-srv:fpos_x instead.")
  (fpos_x m))

(cl:ensure-generic-function 'fpos_y-val :lambda-list '(m))
(cl:defmethod fpos_y-val ((m <path_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:fpos_y-val is deprecated.  Use han2um_test-srv:fpos_y instead.")
  (fpos_y m))

(cl:ensure-generic-function 'fpos_z-val :lambda-list '(m))
(cl:defmethod fpos_z-val ((m <path_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:fpos_z-val is deprecated.  Use han2um_test-srv:fpos_z instead.")
  (fpos_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path_move-request>) ostream)
  "Serializes a message object of type '<path_move-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fpos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fpos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fpos_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path_move-request>) istream)
  "Deserializes a message object of type '<path_move-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fpos_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fpos_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fpos_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path_move-request>)))
  "Returns string type for a service object of type '<path_move-request>"
  "han2um_test/path_moveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_move-request)))
  "Returns string type for a service object of type 'path_move-request"
  "han2um_test/path_moveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path_move-request>)))
  "Returns md5sum for a message object of type '<path_move-request>"
  "744c937c05cffa87d3ea129969217073")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path_move-request)))
  "Returns md5sum for a message object of type 'path_move-request"
  "744c937c05cffa87d3ea129969217073")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path_move-request>)))
  "Returns full string definition for message of type '<path_move-request>"
  (cl:format cl:nil "float64 fpos_x~%float64 fpos_y~%float64 fpos_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path_move-request)))
  "Returns full string definition for message of type 'path_move-request"
  (cl:format cl:nil "float64 fpos_x~%float64 fpos_y~%float64 fpos_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path_move-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path_move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'path_move-request
    (cl:cons ':fpos_x (fpos_x msg))
    (cl:cons ':fpos_y (fpos_y msg))
    (cl:cons ':fpos_z (fpos_z msg))
))
;//! \htmlinclude path_move-response.msg.html

(cl:defclass <path_move-response> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass path_move-response (<path_move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path_move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path_move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name han2um_test-srv:<path_move-response> is deprecated: use han2um_test-srv:path_move-response instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <path_move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader han2um_test-srv:task-val is deprecated.  Use han2um_test-srv:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path_move-response>) ostream)
  "Serializes a message object of type '<path_move-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'task) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path_move-response>) istream)
  "Deserializes a message object of type '<path_move-response>"
    (cl:setf (cl:slot-value msg 'task) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path_move-response>)))
  "Returns string type for a service object of type '<path_move-response>"
  "han2um_test/path_moveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_move-response)))
  "Returns string type for a service object of type 'path_move-response"
  "han2um_test/path_moveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path_move-response>)))
  "Returns md5sum for a message object of type '<path_move-response>"
  "744c937c05cffa87d3ea129969217073")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path_move-response)))
  "Returns md5sum for a message object of type 'path_move-response"
  "744c937c05cffa87d3ea129969217073")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path_move-response>)))
  "Returns full string definition for message of type '<path_move-response>"
  (cl:format cl:nil "bool task~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path_move-response)))
  "Returns full string definition for message of type 'path_move-response"
  (cl:format cl:nil "bool task~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path_move-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path_move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'path_move-response
    (cl:cons ':task (task msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'path_move)))
  'path_move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'path_move)))
  'path_move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_move)))
  "Returns string type for a service object of type '<path_move>"
  "han2um_test/path_move")