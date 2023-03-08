;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |04|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enumeration (many of atomic distinct)
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; problem
; design a function that higher degree to the next level
; A -> A , B -> A, C -> B
;;;;;;;;;;;;;;;;;;;;;;;;;;

; string (degree) -> string (degree)
;(define (bump-up lg) "A")               => stub
;(define (bump-up lg)                    => template
;        (cond [(string=? lg "A") (...)]
;              [(string=? lg "B") (...)]
;              [(string=? lg "C") (...)]
;))

(check-expect (bump-up "A") "A")
(check-expect (bump-up "B") "A")
(check-expect (bump-up "C") "B")

(define (bump-up lg)
        (cond [(string=? lg "A") "A"]
              [(string=? lg "B") "A"]
              [(string=? lg "C") "B"]
))