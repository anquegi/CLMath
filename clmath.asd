#|
  This file is a part of CLMath project.
|#

#|
  CLMath.
|#

(in-package :cl-user)
(defpackage clmath-asd
  (:use :cl :asdf))
(in-package :clmath-asd)

(defsystem clmath
  :version "1.0.0"
  :author "Gerald Roylance"
  :maintainer "Antonio Juan Querol <antonio.querol@cuaqea.com>"
  :homepage "https://github.com/anquegi/CLMath"
  :bug-tracker "https://github.com/anquegi/CLMath/issues"
  :source-control (:git "git@github.com:anquegi/CLMath.git")
  :license "TODO"
  :components ((:module "clmath"
                        :components ((:file "consts")
                                     (:file "horner"))))
  :description "Common Lisp library of mathematical functions."
  :in-order-to ((test-op (test-op clmath-test))))
