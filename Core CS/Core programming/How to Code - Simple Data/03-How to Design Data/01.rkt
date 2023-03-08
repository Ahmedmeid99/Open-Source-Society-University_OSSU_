;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
; (cond [Q A]
;       [Q A]
;       [Q A]
;       [else A]

;;;;;;;;;;;;;;;;;;
;; proplem
; design a function tell us if image
; is tall or square or wide depinde on height width 
;;;;;;;;;;;;;;;;;;

; image -> string [tall , square , wide]
; return tall or square or wide depinde on height width

;(define (aspect-ratio img) "something")   => stub
;(define (aspect-ratio img)                => template
;        (... img))
(define T1 (rectangle 2 3 "solid" "red"))
(define T2 (rectangle 3 3 "solid" "green"))
(define T3 (rectangle 3 2 "solid" "blue"))
(define (aspect-ratio img)
  (cond [(> (image-height img)(image-width img)) "tall"]
        [(< (image-height img)(image-width img)) "wide"]
        [(= (image-height img)(image-width img)) "square"]))


(check-expect (aspect-ratio T1) "tall");  => test
(check-expect (aspect-ratio T2) "square")
(check-expect (aspect-ratio T3) "wide")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Task
;;;;;;;;;;;;;;;;;;
;;proplem
; design a function tell us the
;type of intered number "negative" or "zero" or "positive"
;;;;;;;;;;;;;;;;;;

; Number -> string ["negative" , "zero" , "positive"]
; return "negative" if n > 0 or "positive" n < 0 or "zero" n = 0

(define (check-n? n)
  (cond [(> 0 n) "negative"]
        [(= n 0) "zero"]
        [else "positive"]))

(check-expect (check-n? 0) "zero")
(check-expect (check-n? 100) "positive")
(check-expect (check-n? -10) "negative")