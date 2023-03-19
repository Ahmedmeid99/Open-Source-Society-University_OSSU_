;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname 01-mutually-recursive-data) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Data definition:

(define-struct elt (name data subs))

;; Element is (make-elt String Integer ListofElement)
;; interp. An element in the file system , with name ether data or subs
;;         if data is 0    ,than subs is list of sub elements.
;;         if data isn't 0 ,than subs is ignored. (no folders inside,only files)


;; ListofElement is on of:
;;  - empty
;;  - (cons element ListofElement)


(define F1 (make-elt "F1" 1 empty))
(define F2 (make-elt "F2" 2 empty))
(define F3 (make-elt "F3" 3 empty))
(define D4 (make-elt "D4" 0 (list F1 F2)))
(define D5 (make-elt "D5" 0 (list F3)))
(define D6 (make-elt "D6" 0 (list D4 D5)))


;; Functions
#;
(define (fn-for-element e)
  (...(elt-name e)                                 ; String
      (elt-data e)                                 ; Integer
      (fn-for-list (elt-subs e))))
#;
(define (fn-for-list list)
        (cond [(empty? list) (...)]
              [else
               (...(fn-for-element (first list))   ; element
                   (fn-for-list (rest list)))]))


;;;;;;;;;
;(define (sum--element e) 0)
;(define (sum--list e) 0)

(check-expect (sum-data--element F1) 1)
(check-expect (sum-data--element F2) 2)
(check-expect (sum-data--element F3) 3)
(check-expect (sum-data--element D4) 3)
(check-expect (sum-data--element D5) 3)
(check-expect (sum-data--element D6) 6)

(define (sum-data--element e) 
  (if (zero? (elt-data e))
       (sum-data--list (elt-subs e))
       (elt-data e)
       ))

(define (sum-data--list list)
        (cond [(empty? list) 0]
              [else
               (+(sum-data--element (first list))   ; element
                   (sum-data--list (rest list)))]))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; problem
;;  design a function that consumes String and Element
;;  and looks for a data element with the given name
;;  if it finds that element it produces the data
;;  otherwise it produces false .

;; string , element -> Boolen

;(define (fn-for-element String element) false)  ; => stub
;(define (fn-for-list list) false)        ; => stub

;(make-elt String Integer ListofElement)
;; ("F1" 1 empty)
(check-expect (fn-for-element F1 "F1") 1)
(check-expect (fn-for-element F1 "F2") false)
(check-expect (fn-for-element F3 "F3") 3)
(check-expect (fn-for-element D4 "F2") 2);
(check-expect (fn-for-element D5 "F1") false)
(check-expect (fn-for-element D5 "F3") 3)
(check-expect (fn-for-element D6 "F2") 2)
(define (fn-for-element e s)
      (if  (string=? (elt-name e) s)  ;; true
           (elt-data e)
            (fn-for-list (elt-subs e) s) 
           )
      )

(define (fn-for-list list s)
  (cond [(empty? list)false]
        [else
         (if (not (false? (fn-for-element (first list) s)))
             (fn-for-element (first list) s)
             (fn-for-list (rest list) s))
         ]))