;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname 01-cross-product-table) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ListofString ListofString -> Boolean
;; produce true if list-1 a prefix of list-2

(check-expect (prefix=? empty empty) true)
(check-expect (prefix=? (list "x") empty) false)
(check-expect (prefix=? empty (list "x")) true)
(check-expect (prefix=? (list "x") (list "x")) true)
(check-expect (prefix=? (list "x") (list "y")) false)
(check-expect (prefix=? (list "x" "y") (list "x" "y")) true)
(check-expect (prefix=? (list "x" ) (list "x" "y")) true)
(check-expect (prefix=? (list "x" "y" "z" ) (list "x" "y")) false)

;;(define (prefix=? list-1 list-2) false)  ; stub

;(define (prefix=? list-1 list-2)
;  (cond [(and (empty? list-1) (empty? list-2)) (...)] =>true
;        [(and (cons? list-1) (empty? list-2)) (...)]  =>false
;        [(and (empty? list-1) (cons? list-2)) (...)]  =>true
;        [(and (cons? list-1) (cons? list-2)) (...)])) =>true or fasle

(define (prefix=? list-1 list-2)
  (cond [(empty? list-1) true]
        [(empty? list-2)  false]
        [else
         (and (string=? (first list-1)
                        (first list-2))
              (prefix=? (rest list-1) (rest list-2)))])) ;; (and true true ) => true
