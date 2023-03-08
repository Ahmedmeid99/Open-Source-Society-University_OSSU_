;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; proplem
; Design a function that increase-health by one if the character is not dead 
;;;;;;;;;;;;;;;;;;;;;;;;;;

;health -> health

; health is one of
;- "dead"
;- Natural

;(define (increase-health h) (...))      => stub

;(define (increase-health h)             => template
;         (cond [(string=? "dead") (...)]
;               [else (...h)]))

(check-expect (increase-health 0) 1);    => test
(check-expect (increase-health 2) 3)
(check-expect (increase-health -1) 0)
(check-expect (increase-health "dead") "dead")

(define (increase-health h)
         (cond [(number? h) (add1 h)]
               [else h]))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; onther design for this function

(define (increese-helth-by h nlives)
         (cond [(false? h) false]
               [else (+ h nlives)]))


(check-expect (increese-helth-by 0 3) 3)
(check-expect (increese-helth-by 2 3) 5)
(check-expect (increese-helth-by false 3) false)