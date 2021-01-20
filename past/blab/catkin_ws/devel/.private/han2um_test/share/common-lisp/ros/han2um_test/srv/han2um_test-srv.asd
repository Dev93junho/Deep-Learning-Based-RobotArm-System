
(cl:in-package :asdf)

(defsystem "han2um_test-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "jointstate" :depends-on ("_package_jointstate"))
    (:file "_package_jointstate" :depends-on ("_package"))
    (:file "path_move" :depends-on ("_package_path_move"))
    (:file "_package_path_move" :depends-on ("_package"))
  ))