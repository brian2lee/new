;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::msgs)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'msgs (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::MSGS")
  (make-package "TURTLE_CONTROL::MSGS"))
(unless (find-package "TURTLE_CONTROL::MSGSREQUEST")
  (make-package "TURTLE_CONTROL::MSGSREQUEST"))
(unless (find-package "TURTLE_CONTROL::MSGSRESPONSE")
  (make-package "TURTLE_CONTROL::MSGSRESPONSE"))

(in-package "ROS")





(defclass turtle_control::msgsRequest
  :super ros::object
  :slots (_val _val2 ))

(defmethod turtle_control::msgsRequest
  (:init
   (&key
    ((:val __val) 0)
    ((:val2 __val2) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   (setq _val2 (round __val2))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:val2
   (&optional __val2)
   (if __val2 (setq _val2 __val2)) _val2)
  (:serialization-length
   ()
   (+
    ;; int32 _val
    4
    ;; int32 _val2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _val
       (write-long _val s)
     ;; int32 _val2
       (write-long _val2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _val2
     (setq _val2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtle_control::msgsResponse
  :super ros::object
  :slots (_ans _ans2 ))

(defmethod turtle_control::msgsResponse
  (:init
   (&key
    ((:ans __ans) 0)
    ((:ans2 __ans2) 0)
    )
   (send-super :init)
   (setq _ans (round __ans))
   (setq _ans2 (round __ans2))
   self)
  (:ans
   (&optional __ans)
   (if __ans (setq _ans __ans)) _ans)
  (:ans2
   (&optional __ans2)
   (if __ans2 (setq _ans2 __ans2)) _ans2)
  (:serialization-length
   ()
   (+
    ;; int32 _ans
    4
    ;; int32 _ans2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ans
       (write-long _ans s)
     ;; int32 _ans2
       (write-long _ans2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ans
     (setq _ans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ans2
     (setq _ans2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtle_control::msgs
  :super ros::object
  :slots ())

(setf (get turtle_control::msgs :md5sum-) "0cd72adfcfa06c3a7a00d9b600768e39")
(setf (get turtle_control::msgs :datatype-) "turtle_control/msgs")
(setf (get turtle_control::msgs :request) turtle_control::msgsRequest)
(setf (get turtle_control::msgs :response) turtle_control::msgsResponse)

(defmethod turtle_control::msgsRequest
  (:response () (instance turtle_control::msgsResponse :init)))

(setf (get turtle_control::msgsRequest :md5sum-) "0cd72adfcfa06c3a7a00d9b600768e39")
(setf (get turtle_control::msgsRequest :datatype-) "turtle_control/msgsRequest")
(setf (get turtle_control::msgsRequest :definition-)
      "int32 val
int32 val2
---
int32 ans
int32 ans2


")

(setf (get turtle_control::msgsResponse :md5sum-) "0cd72adfcfa06c3a7a00d9b600768e39")
(setf (get turtle_control::msgsResponse :datatype-) "turtle_control/msgsResponse")
(setf (get turtle_control::msgsResponse :definition-)
      "int32 val
int32 val2
---
int32 ans
int32 ans2


")



(provide :turtle_control/msgs "0cd72adfcfa06c3a7a00d9b600768e39")


