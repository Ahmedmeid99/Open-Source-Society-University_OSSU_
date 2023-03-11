;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01-start-width-List) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; List
; to create a list you must understand some things
; 1- every list has 2 Arguments
; 2- if the list has one item the second item must be empty
; 3- if the list has more than one item the second item must be list
; 4- item may be string or number or img ...

(define L0 empty)                              ;=> 0
(define L1(cons "Ahmed" empty))                ;=> 1
(define L2(cons "ali" (cons "eid" empty)))     ;=> 2
(define imgs (cons (square 10 "solid" "blue")
                   (cons (square 10 "solid" "red")
                          (cons (square 10 "solid" "green") empty)))
              )

;; List Methods
; first  => first item in list
; rest   => second = last item in list

;(first L0)  ; first work only in list type
(first L1)   ; "Ahmed"
(rest L1)    ; empty
(rest L2)    ; (cons "eid" empty)
(first imgs) ;
(first (rest imgs))
(first (rest (rest imgs)))

;; Note to access item start from inside to out