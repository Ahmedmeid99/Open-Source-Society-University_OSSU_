;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; problem
;you have list of images design function
;to represent layout from them after sorted them

;; template
#;
(define (fn-for-natural n)
  (cond [(ZERO? n)(...)]
        [else
         (...n
          (fn-for-natural (SUB1 n)))
         ]))
(require 2htdp/image)
;; Constants
(define EMPTY-TEMPLATE (square 0 "solid" "white"))

;; Ex:.
; lists
(define L1 (cons (rectangle 4 10 "solid" "green") empty))
(define L2 (cons (rectangle 4 6 "solid" "green") (cons (rectangle 6 10 "solid" "red") empty)))
(define L3 (cons (rectangle 4 6 "solid" "green") (cons (rectangle 6 10 "solid" "red") (cons (rectangle 8 12 "solid" "blue") empty))))
;;
(define rectangle-1 (rectangle 4 10 "solid" "green"))
(define rectangle-2 (rectangle 4 6 "solid" "green"))
(define rectangle-3 (rectangle 6 10 "solid" "red"))
(define rectangle-4 (rectangle 8 12 "solid" "blue"))

; imgs
(define img-1 (beside rectangle-1 EMPTY-TEMPLATE))
(define img-2 (beside rectangle-2 rectangle-3 EMPTY-TEMPLATE))
(define img-3 (beside rectangle-2 rectangle-3 rectangle-4 EMPTY-TEMPLATE))
;; Tests
(check-expect (layout-imgs empty) EMPTY-TEMPLATE)
(check-expect (layout-imgs L1) img-1)
(check-expect (layout-imgs L2) img-2)
(check-expect (layout-imgs L3) img-3)
;;;;

;; Functions
;; arrange-imgs
;; Tests
(check-expect (arrange-imgs empty) EMPTY-TEMPLATE)
(check-expect (arrange-imgs L1) img-1)
(check-expect (arrange-imgs L2) img-2)
(check-expect (arrange-imgs L3) img-3)

(define (arrange-imgs list)
  (layout-imgs(sort-imgs list))
  )
;; layout-imgs
(define (layout-imgs list)
  (cond [(empty? list) EMPTY-TEMPLATE]
        [else
         (beside (first list)
          (layout-imgs (rest list)))
         ]))
;; sort-imgs
(define (sort-imgs list)
  (cond [(empty? list) empty]
        [else
         (insert (first list)
          (sort-imgs (rest list)))
         ])
  )
;; insert
; img list -> list
(define (insert img list)
  (cond [(empty? list) (cons img empty)]
        [else
         (if (larger? img (first list))
             (cons (first list)
                   (insert img
                           (rest list)))
         (cons img list))])
  )

;; larger?
; img img -> Boolen
;; Tests
(check-expect (larger? rectangle-1 rectangle-2) true)
(check-expect (larger? rectangle-3 rectangle-1) true)
(check-expect (larger? rectangle-4 rectangle-2) true)

(define (larger? img-1 img-2)
  (> (* (image-width img-1) (image-height img-1))
     (* (image-width img-2) (image-height img-2)))
  )