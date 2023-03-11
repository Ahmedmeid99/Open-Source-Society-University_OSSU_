;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |04|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Proplem
; you have a list of users
; return the count of them

(define N0 (cons "Eid" empty))
(define N1 (cons "Ahmed" empty))
(define N2 (cons "Ali"  (cons "Ahmed" empty)))
(define N3 (cons "Ali" (cons "Eid" (cons "Ahmed" empty))))
(define N4 (cons "Ali" (cons "Ahmed" (cons "Sayed" empty))))

;; Listofstring is one of
;; - empty
;; - (cons string Listofstring)
#;
(define (fn-for-list list)
  (cond [(empty? list) (...)]
        [else
         (... (first list)
              (fn-for-list (rest list)))]))

;; list -> Number
;; return the count users in list
;; if item != empty add 1

;(check-expect (count N0) 1)          ; => test
;(check-expect (count empty) 0)
;(check-expect (count N1) 1)
;(check-expect (count N2) 2)
;(check-expect (count N3) 3)
(check-expect (count N4) 3)

(define (count list)
  (cond [(empty? list) 0]
        [else
         (+ 1 
              (count (rest list)))]))



;; NOTE form step
;(check-expect (count N4) 3)
;(check-expect
; (+
;  1
;  (+
;   1
;   (+ 1 (count '())))) 3)

; (+ 1 (+ 1 (+ 1 0))  ; All 6 tests passed!