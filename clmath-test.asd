#|
  This file is a part of clmath project.
|#

(in-package :cl-user)
(defpackage clmath-test-asd
  (:use :cl :asdf))
(in-package :clmath-test-asd)

(defsystem clmath-test
  :version "1.0.0"
  :author "Gerald Roylance"
  :maintainer "Antonio Juan Querol <antonio.querol@cuaqea.com>"
  :license "MIT"
  :depends-on (:clmath
               :parachute)
  :components ((:module "t"
                :components
                ((:file "clmath"))))
  :description "Test system for clmath"
  :defsystem-depends-on (:prove-asdf)
  :perform (test-op (op c)
                    (uiop:symbol-call :parachute :test :clmath-test)))
