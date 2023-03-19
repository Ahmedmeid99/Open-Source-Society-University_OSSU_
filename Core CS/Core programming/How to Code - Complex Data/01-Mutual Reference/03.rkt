;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |03|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; problem
;; design a function that consumes a person and
;; produces a list of the names of all the people in the tree under 20
;; define structure
(define-struct person (name age children))
;; person is (make-person String Natural listofPerson)
;; interp. a person with first name , age , list pf their children

(define P1 (make-person "Adel" 10 empty))
(define P2 (make-person "Ali" 15 empty))
(define P3 (make-person "Mohamed" 21 empty))
(define P4 (make-person "Ahmed" 45 (list P1 P2 P3)))
(define P5 (make-person "Eid" 45 (list P4)))

;; person        -> listpofString
;; listpofPerson -> listpofString
;; produces a list of the names of all the people in the tree under 20

;(define (fn-for-person p) empty)    ; stub
;(define (fn-for-list list) empty)   ; stub

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
;; function
(check-expect (fn-for-person P1) (list "Adel"))
(check-expect (fn-for-person P4) (list "Ahmed" "Adel" "Ali"))
(check-expect (fn-for-person P5) (list  "Eid")) ;; will not append "Ahmed" beacuse "Ahmed" his age is > 20

(define (fn-for-person person)
  (if (empty? (person-children person))
      (cons (person-name person) empty)    ;if true 
          (cons (person-name person)
                (fn-for-list (person-children person)))
          )) ;if false

(define (fn-for-list list)
  (cond [(empty? list) empty]
        [else
         (if (< (person-age (first list)) 20)
         (append (fn-for-person (first list))
              (fn-for-list(rest list)))
         empty)]))


