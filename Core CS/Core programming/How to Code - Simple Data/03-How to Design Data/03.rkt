;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |03|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; distinct (atomic distinct)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; problem
; design a function for chicking if
;the entered cityname is "Boston" or not
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; cityName -> Boolen
;(define (best? c) false)      => stub
;(define (best? c)             => template
;         (...c)

(check-expect (best? "Boston") true)
(check-expect (best? "Hogsmeade") false)


(define (best? c)
         (string=? c "Boston"))

;(define (best? c)
;         (if(string=? c "Boston")
;            true
;            false))