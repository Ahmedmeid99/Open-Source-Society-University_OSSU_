;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |02|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Data definition:

(define-struct elt (name data subs))
;; Proplem
; Design a function that consumes Element and produce a list of the name of all the element in the tree.

;; element is (make-elt String Integer ListofElement)
;; interp. An element in the file system , with name ether data or subs
;;         if data == 0 then return its elements 
;;         else return empty

(define F1 (make-elt "F1" 1 empty)) 
(define F2 (make-elt "F2" 2 empty))
(define F3 (make-elt "F3" 3 empty))
(define D4 (make-elt "D4" 0 (list F1 F2)))
(define D5 (make-elt "D5" 0 (list F3)))
(define D6 (make-elt "D6" 0 (list D4 D5)))

;; element is (make-elt String Integer ListofElement)
;; ListofElement is on of:
;;  - empty
;;  - (cons element ListofElement)

;; test
(check-expect (all-names-element F1) (list "F1"))
(check-expect (all-names-element F2) (list "F2"))
(check-expect (all-names-element F3) (list "F3"))
(check-expect (all-names-element D4) (list "D4" "F1" "F2"))
(check-expect (all-names-element D5) (list "D5" "F3"))
(check-expect (all-names-element D6) (cons "D6" (append (list "D4" "F1" "F2") (list "D5" "F3"))))

;; function
;; element -> list
; mine
;(define (all-names-element e)
;  (if (empty? (elt-subs e))
;      (list (elt-name e))
;      (cons (elt-name e)
;      (all-names-list (elt-subs e)))
;      ))

(define (all-names-element e)
      (cons (elt-name e)
      (all-names-list (elt-subs e)))
      )

(define (all-names-list list)
        (cond [(empty? list) empty]
              [else 
               (append (all-names-element (first list))
                   (all-names-list (rest list)))]))

