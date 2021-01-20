;; Auto-generated. Do not edit!


(when (boundp 'cucumber::msgs)
  (if (not (find-package "CUCUMBER"))
    (make-package "CUCUMBER"))
  (shadow 'msgs (find-package "CUCUMBER")))
(unless (find-package "CUCUMBER::MSGS")
  (make-package "CUCUMBER::MSGS"))
(unless (find-package "CUCUMBER::MSGSREQUEST")
  (make-package "CUCUMBER::MSGSREQUEST"))
(unless (find-package "CUCUMBER::MSGSRESPONSE")
  (make-package "CUCUMBER::MSGSRESPONSE"))

(in-package "ROS")





(defclass cucumber::msgsRequest
  :super ros::object
  :slots (_val _val2 ))

(defmethod cucumber::msgsRequest
  (:init
   (&key
    ((:val __val) 0.0)
    ((:val2 __val2) 0.0)
    )
   (send-super :init)
   (setq _val (float __val))
   (setq _val2 (float __val2))
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
    ;; float32 _val
    4
    ;; float32 _val2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _val
       (sys::poke _val (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _val2
       (sys::poke _val2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _val
     (setq _val (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _val2
     (setq _val2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cucumber::msgsResponse
  :super ros::object
  :slots (_ans _ans2 _ans3 _ans4 ))

(defmethod cucumber::msgsResponse
  (:init
   (&key
    ((:ans __ans) 0.0)
    ((:ans2 __ans2) 0.0)
    ((:ans3 __ans3) 0.0)
    ((:ans4 __ans4) 0.0)
    )
   (send-super :init)
   (setq _ans (float __ans))
   (setq _ans2 (float __ans2))
   (setq _ans3 (float __ans3))
   (setq _ans4 (float __ans4))
   self)
  (:ans
   (&optional __ans)
   (if __ans (setq _ans __ans)) _ans)
  (:ans2
   (&optional __ans2)
   (if __ans2 (setq _ans2 __ans2)) _ans2)
  (:ans3
   (&optional __ans3)
   (if __ans3 (setq _ans3 __ans3)) _ans3)
  (:ans4
   (&optional __ans4)
   (if __ans4 (setq _ans4 __ans4)) _ans4)
  (:serialization-length
   ()
   (+
    ;; float32 _ans
    4
    ;; float32 _ans2
    4
    ;; float32 _ans3
    4
    ;; float32 _ans4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ans
       (sys::poke _ans (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ans2
       (sys::poke _ans2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ans3
       (sys::poke _ans3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ans4
       (sys::poke _ans4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ans
     (setq _ans (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ans2
     (setq _ans2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ans3
     (setq _ans3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ans4
     (setq _ans4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cucumber::msgs
  :super ros::object
  :slots ())

(setf (get cucumber::msgs :md5sum-) "851ebf8bfb1ad34675c9d5bed81ecf25")
(setf (get cucumber::msgs :datatype-) "cucumber/msgs")
(setf (get cucumber::msgs :request) cucumber::msgsRequest)
(setf (get cucumber::msgs :response) cucumber::msgsResponse)

(defmethod cucumber::msgsRequest
  (:response () (instance cucumber::msgsResponse :init)))

(setf (get cucumber::msgsRequest :md5sum-) "851ebf8bfb1ad34675c9d5bed81ecf25")
(setf (get cucumber::msgsRequest :datatype-) "cucumber/msgsRequest")
(setf (get cucumber::msgsRequest :definition-)
      "float32 val
float32 val2
---
float32 ans
float32 ans2
float32 ans3
float32 ans4


")

(setf (get cucumber::msgsResponse :md5sum-) "851ebf8bfb1ad34675c9d5bed81ecf25")
(setf (get cucumber::msgsResponse :datatype-) "cucumber/msgsResponse")
(setf (get cucumber::msgsResponse :definition-)
      "float32 val
float32 val2
---
float32 ans
float32 ans2
float32 ans3
float32 ans4


")



(provide :cucumber/msgs "851ebf8bfb1ad34675c9d5bed81ecf25")


