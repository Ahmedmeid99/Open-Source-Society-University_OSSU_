;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01.BSL) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;first comment 

(+ 3 2); 5

(+ 3 (* 2 3) ); 9

(/ 12 (* 2 3)) ; 2

(sqr 3) ; 9

(sqrt 16) ; 4 squar root
;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;
; Task 01
(+ (sqrt (sqr 3)) (sqrt (sqr 4))) ; 7 True
(sqrt (+ (sqr 3)(sqr 4))) ; 5 False
(sqrt 2) ;#i1.4142135623730951 i => inexact

;;;;;;;;;;;;;;;;;;;;;;;;;;

(+ 2 (* 3 4) (- (+ 1 2) 3)) ; 14