;; Auto-generated. Do not edit!


(when (boundp 'han2um_test::jointstate)
  (if (not (find-package "HAN2UM_TEST"))
    (make-package "HAN2UM_TEST"))
  (shadow 'jointstate (find-package "HAN2UM_TEST")))
(unless (find-package "HAN2UM_TEST::JOINTSTATE")
  (make-package "HAN2UM_TEST::JOINTSTATE"))
(unless (find-package "HAN2UM_TEST::JOINTSTATEREQUEST")
  (make-package "HAN2UM_TEST::JOINTSTATEREQUEST"))
(unless (find-package "HAN2UM_TEST::JOINTSTATERESPONSE")
  (make-package "HAN2UM_TEST::JOINTSTATERESPONSE"))

(in-package "ROS")





(defclass han2um_test::jointstateRequest
  :super ros::object
  :slots (_get ))

(defmethod han2um_test::jointstateRequest
  (:init
   (&key
    ((:get __get) nil)
    )
   (send-super :init)
   (setq _get __get)
   self)
  (:get
   (&optional __get)
   (if __get (setq _get __get)) _get)
  (:serialization-length
   ()
   (+
    ;; bool _get
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _get
       (if _get (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _get
     (setq _get (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass han2um_test::jointstateResponse
  :super ros::object
  :slots (_th0 _th1 _th2 _th3 ))

(defmethod han2um_test::jointstateResponse
  (:init
   (&key
    ((:th0 __th0) 0.0)
    ((:th1 __th1) 0.0)
    ((:th2 __th2) 0.0)
    ((:th3 __th3) 0.0)
    )
   (send-super :init)
   (setq _th0 (float __th0))
   (setq _th1 (float __th1))
   (setq _th2 (float __th2))
   (setq _th3 (float __th3))
   self)
  (:th0
   (&optional __th0)
   (if __th0 (setq _th0 __th0)) _th0)
  (:th1
   (&optional __th1)
   (if __th1 (setq _th1 __th1)) _th1)
  (:th2
   (&optional __th2)
   (if __th2 (setq _th2 __th2)) _th2)
  (:th3
   (&optional __th3)
   (if __th3 (setq _th3 __th3)) _th3)
  (:serialization-length
   ()
   (+
    ;; float64 _th0
    8
    ;; float64 _th1
    8
    ;; float64 _th2
    8
    ;; float64 _th3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _th0
       (sys::poke _th0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _th1
       (sys::poke _th1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _th2
       (sys::poke _th2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _th3
       (sys::poke _th3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _th0
     (setq _th0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _th1
     (setq _th1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _th2
     (setq _th2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _th3
     (setq _th3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass han2um_test::jointstate
  :super ros::object
  :slots ())

(setf (get han2um_test::jointstate :md5sum-) "50eae85153eb979d8c8f4d321262116c")
(setf (get han2um_test::jointstate :datatype-) "han2um_test/jointstate")
(setf (get han2um_test::jointstate :request) han2um_test::jointstateRequest)
(setf (get han2um_test::jointstate :response) han2um_test::jointstateResponse)

(defmethod han2um_test::jointstateRequest
  (:response () (instance han2um_test::jointstateResponse :init)))

(setf (get han2um_test::jointstateRequest :md5sum-) "50eae85153eb979d8c8f4d321262116c")
(setf (get han2um_test::jointstateRequest :datatype-) "han2um_test/jointstateRequest")
(setf (get han2um_test::jointstateRequest :definition-)
      "bool get
---
float64 th0
float64 th1
float64 th2
float64 th3

")

(setf (get han2um_test::jointstateResponse :md5sum-) "50eae85153eb979d8c8f4d321262116c")
(setf (get han2um_test::jointstateResponse :datatype-) "han2um_test/jointstateResponse")
(setf (get han2um_test::jointstateResponse :definition-)
      "bool get
---
float64 th0
float64 th1
float64 th2
float64 th3

")



(provide :han2um_test/jointstate "50eae85153eb979d8c8f4d321262116c")


