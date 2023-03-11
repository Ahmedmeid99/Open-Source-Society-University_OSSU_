;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Loop through list
; Recersion

;; Proplem
; you have a list of names
; if your name in this list return true
; else                      return fale
(define N0 (cons "Eid" empty))
(define N1 (cons "Ahmed" empty))
(define N2 (cons "Ali"  (cons "Ahmed" empty)))
(define N3 (cons "Ali" (cons "Eid" (cons "Ahmed" empty))))
(define N4 (cons "Ali" (cons "Ahmed" (cons "Sayed" empty))))

;; Listofstring is one of
;; - empty
;; - (cons string Listofstring)
#;
(define (fn-for-list list)
  (cond [(empty? list) (...)]
        [else
         (... (first list)
              (fn-for-list (rest list)))]))

;; list -> Boolen
;; if list contain "Ahmed" return true else return false

;(check-expect (fn-for-list N0) false)          ; => test
;(check-expect (fn-for-list empty) false)
(check-expect (fn-for-list (cons "e" empty)) false)
;(check-expect (fn-for-list N1) true)
;(check-expect (fn-for-list N2) true)
;(check-expect (fn-for-list N3) true)
;(check-expect (fn-for-list N4) true)

(define (fn-for-list list)
  (cond [(empty? list) false]
        [else
         (if (string=? (first list) "Ahmed")
             true
             (fn-for-list (rest list)))]))    ; false


;; Note
; from step
;(cons "e" empty)
;(first list) != "Ahmed"
; (rest list) == empty != "Ahmed" 
