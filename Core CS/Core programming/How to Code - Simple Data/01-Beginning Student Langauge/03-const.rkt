;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 03-const) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
; define a constant

(define WIDTH 100)
(define HEIGHT 200)
(+ WIDTH HEIGHT) ; 300

(define CAT "cat-img")

(define RCAT (rotate -10 CAT))
(define LCAT (rotate 10 CAT))
LCAT