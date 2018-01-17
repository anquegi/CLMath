(in-package :cl-user)

(defpackage clmath-test
  (:use :cl
        :parachute
        :clmath.consts
        :clmath.horner))

(in-package :clmath-test)

(define-test "Horner package is a tool for evaluating polynomials"
  (of-type list  (poly-expand 't '(1 2 3)))
  (is equal '(+ 0 (* X (+ 0 (* X (+ 0 (* X 1)))))) (poly-expand 'x '(0 0 0 1)) )
  (is = 8 (poly 2 0 0 0 1))
  (is = 16 (horner-hack (isqrt 16) 0 0 1)))



