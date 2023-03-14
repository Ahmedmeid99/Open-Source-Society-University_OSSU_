;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(add1 0)          ; 1
(add1 (add1 2))   ; 4
(sub1 1)          ; 0
(sub1 (sub1 2))   ; 0
;; PROBLEM
; sum all numbers under given number
;ex: 3 => 3+2+1+0 = 6

;; Natural -> Natural
;; produce sum of Natural [0,n]

(check-expect (sum 0) 0)
(check-expect (sum 3) 6)
(check-expect (sum 4) 10)

;(define (sum) 0)          ; => stub

;(define (sum n)           ; => template
;  (cond [(zero? n)(...n)]
;        [else
;         (...
;            (sum (sub n)))]))

(define (sum n)
  (cond [(zero? n) 0]
        [else
         (+ n
            (sum (sub1 n)))]))


;; PROBLEM
; create a list of numbers under given number
;ex: 3 =>(cons 3 (cons 2 (cons 1 empty)))

;; Natural -> List


(check-expect (n-to-list 0) empty)   ; base case
(check-expect (n-to-list 3) (cons 3 (cons 2 (cons 1 empty))))

(define (n-to-list n)           
  (cond [(zero? n) empty]
        [else
         (cons n
            (n-to-list (sub1 n)))]))
