;; Auto-generated. Do not edit!


(when (boundp 'han2um_test::path_move)
  (if (not (find-package "HAN2UM_TEST"))
    (make-package "HAN2UM_TEST"))
  (shadow 'path_move (find-package "HAN2UM_TEST")))
(unless (find-package "HAN2UM_TEST::PATH_MOVE")
  (make-package "HAN2UM_TEST::PATH_MOVE"))
(unless (find-package "HAN2UM_TEST::PATH_MOVEREQUEST")
  (make-package "HAN2UM_TEST::PATH_MOVEREQUEST"))
(unless (find-package "HAN2UM_TEST::PATH_MOVERESPONSE")
  (make-package "HAN2UM_TEST::PATH_MOVERESPONSE"))

(in-package "ROS")





(defclass han2um_test::path_moveRequest
  :super ros::object
  :slots (_fpos_x _fpos_y _fpos_z ))

(defmethod han2um_test::path_moveRequest
  (:init
   (&key
    ((:fpos_x __fpos_x) 0.0)
    ((:fpos_y __fpos_y) 0.0)
    ((:fpos_z __fpos_z) 0.0)
    )
   (send-super :init)
   (setq _fpos_x (float __fpos_x))
   (setq _fpos_y (float __fpos_y))
   (setq _fpos_z (float __fpos_z))
   self)
  (:fpos_x
   (&optional __fpos_x)
   (if __fpos_x (setq _fpos_x __fpos_x)) _fpos_x)
  (:fpos_y
   (&optional __fpos_y)
   (if __fpos_y (setq _fpos_y __fpos_y)) _fpos_y)
  (:fpos_z
   (&optional __fpos_z)
   (if __fpos_z (setq _fpos_z __fpos_z)) _fpos_z)
  (:serialization-length
   ()
   (+
    ;; float64 _fpos_x
    8
    ;; float64 _fpos_y
    8
    ;; float64 _fpos_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _fpos_x
       (sys::poke _fpos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fpos_y
       (sys::poke _fpos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fpos_z
       (sys::poke _fpos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _fpos_x
     (setq _fpos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fpos_y
     (setq _fpos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fpos_z
     (setq _fpos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass han2um_test::path_moveResponse
  :super ros::object
  :slots (_task ))

(defmethod han2um_test::path_moveResponse
  (:init
   (&key
    ((:task __task) nil)
    )
   (send-super :init)
   (setq _task __task)
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:serialization-length
   ()
   (+
    ;; bool _task
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _task
       (if _task (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _task
     (setq _task (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass han2um_test::path_move
  :super ros::object
  :slots ())

(setf (get han2um_test::path_move :md5sum-) "744c937c05cffa87d3ea129969217073")
(setf (get han2um_test::path_move :datatype-) "han2um_test/path_move")
(setf (get han2um_test::path_move :request) han2um_test::path_moveRequest)
(setf (get han2um_test::path_move :response) han2um_test::path_moveResponse)

(defmethod han2um_test::path_moveRequest
  (:response () (instance han2um_test::path_moveResponse :init)))

(setf (get han2um_test::path_moveRequest :md5sum-) "744c937c05cffa87d3ea129969217073")
(setf (get han2um_test::path_moveRequest :datatype-) "han2um_test/path_moveRequest")
(setf (get han2um_test::path_moveRequest :definition-)
      "float64 fpos_x
float64 fpos_y
float64 fpos_z
---
bool task

")

(setf (get han2um_test::path_moveResponse :md5sum-) "744c937c05cffa87d3ea129969217073")
(setf (get han2um_test::path_moveResponse :datatype-) "han2um_test/path_moveResponse")
(setf (get han2um_test::path_moveResponse :definition-)
      "float64 fpos_x
float64 fpos_y
float64 fpos_z
---
bool task

")



(provide :han2um_test/path_move "744c937c05cffa87d3ea129969217073")


