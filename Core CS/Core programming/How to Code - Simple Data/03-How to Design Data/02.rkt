;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; TLColor is one of
;; - 2
;; - 1
;; - 0

;; color of traffic light
;;  0 -> red , 1 -> yellow , 2 -> green

;(define (next-color c) 0)    => stub
;(define (next-color c)       => template
;  (cond [() (...)]
;        [() (...)]
;        [() (...)]))

(define (next-color c)
  (cond [(= c 0) 2]
        [(= c 1) 0]
        [(= c 2) 1]))

(check-expect (next-color 0) 2);=> test
(check-expect (next-color 1) 0)
(check-expect (next-color 2) 1)

