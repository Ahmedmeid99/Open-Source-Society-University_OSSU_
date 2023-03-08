;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |05|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;;;;;;;;;;;;;;;;;;;;;;;;;
;; Itemization
;;;;;;;;;;;;;;;;;;;;;;;;;
;; problem
; design a function  (countdown) that display
; false -> not yet started , [10-1] -> second before midnight , "complet" -> Happy New Year
;;;;;;;;;;;;;;;;;;;;;;;;;

;(define (count-down c)
;        (cond [(false? c) (...)]
;              [(and (>= c 1) (<= c 10)) (...c)]
;              [(string=? c "complet") (...)]))

(define (count-down c)
        (cond [(false? c)
               (square 0 "solid" "white")]
              [(and (number? c) (>= c 1) (<= c 10))
               (text (number->string c) 24 "black")]
              [(string=? c "complet")
               (text "Happy New Year !!!" 24 "red")]))

(count-down false)       ; nothing to show
(count-down 3)           ; 3
(count-down "complet")   ; Happy New Year !!!