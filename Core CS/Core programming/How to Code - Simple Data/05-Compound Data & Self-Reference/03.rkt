;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |03|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Proplem
; you have a list of owl widths
; return the total of widths
(define W0  empty)
(define W1 (cons 10 empty))
(define W2 (cons 2  (cons 12 empty)))
(define W3 (cons 7 (cons 13 (cons 39 empty))))
(define W4 (cons 13 (cons 23 (cons 3 empty))))
;; list -> Number
;; produc every number together and
;if there are empty item make its value zero
#;
(define (fn-for-list list)                   ;=> template
  (cond [(empty? list) (...)]
        [else
         (... (first list)
              (fn-for-list (rest list)))]))

(check-expect (sum W0) 0)                    ;=> tests
(check-expect (sum W1) (+ 10 0))
(check-expect (sum W2) (+ 2 12))
(check-expect (sum W3) (+ 7 13 39))
(check-expect (sum W4) (+ 13 23 3))

(define (sum list)
  (cond [(empty? list) 0]
        [else
         (+ (first list)
              (sum (rest list)))]))


;;NOTE
; in the end of recerion work
;(sum '()) == empty = 0
;(+ 7 (+ 13 (+ 39 (sum '())))
;(+ 7 (+ 13 (+ 39  0)))