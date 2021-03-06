;; Auto-generated. Do not edit!


(when (boundp 'nxt_msgs::Contact)
  (if (not (find-package "NXT_MSGS"))
    (make-package "NXT_MSGS"))
  (shadow 'Contact (find-package "NXT_MSGS")))
(unless (find-package "NXT_MSGS::CONTACT")
  (make-package "NXT_MSGS::CONTACT"))

(in-package "ROS")
;;//! \htmlinclude Contact.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nxt_msgs::Contact
  :super ros::object
  :slots (_header _contact ))

(defmethod nxt_msgs::Contact
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:contact __contact) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _contact __contact)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:contact
   (&optional __contact)
   (if __contact (setq _contact __contact)) _contact)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _contact
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _contact
       (if _contact (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _contact
     (setq _contact (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nxt_msgs::Contact :md5sum-) "771b237034839b48d5de401dc68aaf43")
(setf (get nxt_msgs::Contact :datatype-) "nxt_msgs/Contact")
(setf (get nxt_msgs::Contact :definition-)
      "Header header
bool contact

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :nxt_msgs/Contact "771b237034839b48d5de401dc68aaf43")


