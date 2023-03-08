;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01_HtDF) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; How to Desigin Function (HtDF).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;[1] Signature , Purpose , Stub
;[2] Examples
;[3] Inventory , Template
;[4] Code body
;[5] Test & Debug

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;deigin function take number and
;return this number after reduce 2 times
;3 -> 6 , 2.4 -> 4.8
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Number -> Number =>(Signature)
; reduce 2 times the given number =>(Purpose)
;(define (double n) 0) =>(Stub)

;(define (double n) =>(Template)
;        (... n)) => (Code body)

(check-expect (double 3) 6)
(check-expect (double 2.4) 4.8)
; Both tests passed! => Ex & Test

(define (double n)
        (* 2 n))