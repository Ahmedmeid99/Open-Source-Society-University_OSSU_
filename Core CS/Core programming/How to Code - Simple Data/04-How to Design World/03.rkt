;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |03|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Create a Structure

(define-struct pos (x y))

(define p1 (make-pos 3 5))

;(pos-x p1)
;(pos-y p1)

;(define (add p)       => template
;  (... (pos-x p)
;       (pos-y p)))


(define (add p)
  (+ (pos-x p) (pos-y p)))

(add p1) ; 8 (3+5)