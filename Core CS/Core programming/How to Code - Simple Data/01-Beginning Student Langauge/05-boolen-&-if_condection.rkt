;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 05-boolen-&-if_condection) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
; Boolen Values
;true
;false

;(define c1 (circle 10 "solid" "red"))
;(define c2 (circle 10 "solid" "green"))
;(< (image-width c1)
;   (image-width c2)); false
;
;(<= (image-width c1)
;   (image-width c2)); true

(and (< 1 2)
     (< 2 3)); true

(or (> 1 2)
     (< 2 3)); true

(or (> 1 2)
     (> 2 3)); false
; If conditition

;(if (<= (image-width c1)
;        (image-width c2))
;    "c1 <= c2"
;    "c1 < c2 or c2 < c1" ); "c1 <= c2"
;;;;;;
(define x1 (rectangle 10 20 "solid" "red")); var x1
(define x2 (rectangle 20 10 "solid" "green")) ; var x2

(if (> (image-width x1)
       (image-width x2))
    "x1 is the biggest"
    "x2 is the biggest"
    )
(if (> (image-width x1)
       (image-width x2))
    (image-width x1)
    (image-width x2)
    ) ; 20
