;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname 02-search) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#;
(define (fn-for-bst t)
  (cond [(fasle? t)(...)]
        [else
         (...(node-key t)
             (node-val t)
             (fn-for-bst (node-l t))
             (fn-for-bst (node-r t)))]))
;; Node Structure
(define-struct node (key val l r))

;; constants
(define BST0 false)
(define BST1 (make-node 1 "abc" false false))
(define BST4 (make-node 4 "dcj" false  (make-node 7 "ruf" false false)))
(define BST3 (make-node 3 "lik" BST1 BST4))
(define BST42 (make-node 42 "ily"
                         (make-node 27 "wit" (make-node 14 "olp" false false) false)
                         (make-node 50 "dug" false false)))

(define BST10 (make-node 10 "why" BST3 BST42))

;; template

; 1  3  4  7  10  14  27  42  50
;................................
;             10
; 1  3  4  7      14  27  42  50
;................................
;             10
;    3                    42
; 1     4 7       14  27      50
;................................
;             10
;    3                    42
; 1      4             27     50
;                 14        
;................................

;                               10: why
;                   __________/         \_________
;                  /                              \
;              3:lik                            42:ily
;            /       \                        /        \
;        1:abc       4:dcj                27:wit       50:dug
;                      \                   /
;                      7:ruf           14:olp

(check-expect (lookup-key BST0 99) false)
(check-expect (lookup-key BST1 1) "abc")
(check-expect (lookup-key BST1 0) false)
(check-expect (lookup-key BST1 99) false)
(check-expect (lookup-key BST10 1) "abc")  ; L L
(check-expect (lookup-key BST10 4) "dcj")  ; L R
(check-expect (lookup-key BST10 27) "wit")
(check-expect (lookup-key BST10 50) "dug")

;; Function
; BTS , nutural -> String or false
; will return a string for its entered key was found or
;               false if key isn't found

(define (lookup-key t k)
  (cond [(false? t) false]
        [else
         (cond [(= k (node-key t)) (node-val t)]
               [(< k (node-key t)) (lookup-key (node-l t) k)] ; should we go left?
               [(> k (node-key t)) (lookup-key (node-r t) k)] ; should we go right?
             )]))