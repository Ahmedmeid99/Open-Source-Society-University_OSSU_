;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 04-function) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (calc x y)
  (+ x y))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (bulb color)
	(circle 20 "solid" color))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(calc 2 3) ; 5
(bulb "red") ; red ball

(beside (bulb "red")
        (bulb "green")
        (bulb "blue"))
