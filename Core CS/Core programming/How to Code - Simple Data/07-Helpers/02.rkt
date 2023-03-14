;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define N0 empty)   
(define N1 (cons "!" N0))
(define N2 (cons "!" N1))
(define N3 (cons "!" N2))
(define N4 (cons "!" N3))
(define N5 (cons "!" N4))
(define N6 (cons "!" N5))
(define N7 (cons "!" N6))
(define N8 (cons "!" N7))
(define N9 (cons "!" N8))

;N3  -> (cons "!" (cons "!" (cons "!" '())))

;; definetion
;; there are three primitives that operate Natural
(define (ZERO? n) (empty? n))
(define (ADD1 n) (cons "!" n))
(define (SUB1 n) (rest n))
#;
(define (fn-for-natural n)
  (cond [(ZERO? n)(...)]
        [else
         (...n
          (fn-for-natural (SUB1 n)))
         ]))
;; ADD list to list

(check-expect (ADD N2 N0) N2)
(check-expect (ADD N0 N2) N2)
(check-expect (ADD N2 N1) N3)

(define (ADD a b)
  (cond [(ZERO? b) a]
        [(ZERO? a) b]
        [else
          (ADD (ADD1 a) (SUB1 b))
         ]))

;; How is it work ?
; if 3 , 0 => 3 or 0 , 3 => 3
; else 3 + 2 => 4 + 1 => 5 + 0 = 5


;; SUBTRACT list to list
(check-expect (SUBTRACT N2 N0) N2)
(check-expect (SUBTRACT N7 N4) N3)
(check-expect (SUBTRACT N4 N2) N2)

(define (SUBTRACT a b)
  (cond [(ZERO? b) a]
        [(ZERO? a) b]
        [else
         (SUBTRACT
          (SUB1 a)
          (SUB1 b))
         ]))

;; How is it work ?
; if 3 , 0 => 3 
; else 3 - 2 => 2 , 1 => 1 , 0 = 1