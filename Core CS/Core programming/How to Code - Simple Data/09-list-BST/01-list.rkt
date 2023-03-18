;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname 01-list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(cons 1 (cons 2 (cons 3 empty))) ; (list 1 2 3)
(list 1 2 3)                     ; (list 1 2 3)

(define L1 (list 1 2 3))
(define L2 (list 4 5 6))

(cons 0 L1 )                     ; (list 0 1 2 3)
(list 0 L1)                      ; (list 0 (list 1 2 3))
(append L2 L1)                   ;(list 4 5 6 1 2 3)