;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER -*-

;;;; Mathematical and Physical Constants

;;;  (c) Copyright Gerald Roylance 1980, 1985
;;;      All Rights Reserved.
;;;  This file may be distributed noncommercially provided
;;;  that this notice is not removed.

;;; Bugs and Fixes
;;;   Better treatment of physical constants
;;;     in TX:/tx/glr/funct/sym/unit.lisp

;;;; Physical Units

;;; base units of Si:
;;;      meter, kilogram, second, ampere, Kelvin, Candela

;;; volt
;;; ohm
;;; coulomb
;;; farad
;;; henry   (inductance that produces 1V emf when di/dt=1 A per sec)
;;; Weber   (mag. flux producing 1V emf in one turn as the flux
;;;          goes uniformly to zero in 1 second)
;;; Tesla   (flux density of 1 Weber/square meter)

;;;  MKS  EMU
;;; magnetizing force  H A-turns/meter =Oersteds * 1e3 / (4 pi)
;;; flux  phi  Weber   =Maxwells * 1e-8
;;; flux density B Weber/sq meter  =Gauss * 1e-4
;;; permeability mu H/m  =Gauss/Oersted *4e-7 * pi
(in-package :cl-user)

(defpackage :clmath.consts
  (:use :cl)
  (:export
   :+c+
   :+q+
   :+h+
   :+N+
   :+amu+
   :+me+
   :+mp+
   :+phi+
   :+k+
   :+gamma+
   :+mu0+
   :+epsilon0+))

(in-package :clmath.consts)

;;;; Physical Constants
(defconstant +c+ 2.9979250e8
  "velocity of light, meters per second")
(defconstant +q+ 1.6021917e-19
  "electronic-charge, coulomb")
(defconstant +h+ 6.626196e-34
  "Plancks-constant, Joule second")
(defconstant +N+ 6.022169e26
  "Avagadros-number, per K mole")
(defconstant +amu+ 1.660531e-27
  "atomic-mass-unit, K gram")
(defconstant +me+ 9.109558e-31
  "electron-rest-mass, K gram")
(defconstant +mp+ 1.672614e-27
  "proton-rest-mass, K gram")
(defconstant +phi+ 2.067854e-15
  "magnetic-flux-quantum, Tesla meter meter")
(defconstant +k+ 1.380622e-23
  "Boltzmanns-constant, Joule per Kelvin")
(defconstant +gamma+ 6.6732e-11
  "gravitational-constant, Newton (meter 2) per (K gram 2)")
(defconstant +mu0+ (* 4.0 pi 1.0e-7)
  "permeability-free-space, henry per meter")
(defconstant +epsilon0+ 8.854e-12
  "permittivity-free-space, farads per meter")
