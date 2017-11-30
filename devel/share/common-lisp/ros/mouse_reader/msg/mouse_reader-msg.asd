
(cl:in-package :asdf)

(defsystem "mouse_reader-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "mouse" :depends-on ("_package_mouse"))
    (:file "_package_mouse" :depends-on ("_package"))
  ))