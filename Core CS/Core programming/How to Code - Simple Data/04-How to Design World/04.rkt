;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |04|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)
;; proplem
; design a program allow user to see
; his fav animal translate from point in screen
;to the reigt than to left and so on
;
;; constants
(define WIDTH 600)
(define HEIGHT 400)
(define COW-Y (/ HEIGHT 2))
(define COW-IMG-1 "img-1")
(define COW-IMG-2 "img-2")
(define MTS (empty-scene WIDTH HEIGHT))

;; changing vars
(define CAT-X 0)
(define SPEAD 5)

;; Define Structure
(define-struct cow (x dx))
(define p1 (make-cow 0 3))
(define p2 (make-cow (+ WIDTH 5) 3))
(define p3 (make-cow -5 -3))

;; Functions
; -main function
(define (main c)           ; c is pos structure
  (big-bang c              ; pass c as prameter to every function
    (on-tick next-cat)     ; after every moment run this function next-cat
    (to-draw render-cat))) ; render what render-cat return

; get the next x position as pexel
; dir? 
;x-position?
(check-expect (next-cat p1) (make-cow 3 3)) 
(check-expect (next-cat p2) (make-cow WIDTH -3)) 
(check-expect (next-cat p3) (make-cow 0 3))

(define (next-cat c); return => (x dx) 
  (cond [(>(+ (cow-x c) (cow-dx c)) WIDTH)(make-cow WIDTH (- (cow-dx c)))]
        [(<(+ (cow-x c) (cow-dx c)) 0)    (make-cow 0     (- (cow-dx c)))]
        [else
         (make-cow (+ (cow-x c) (cow-dx c)) (cow-dx c))]))
; render the cat position in screen
; chouse an img
; render it
(define (select-img c)
  (if (> (cow-dx c) 0)
      COW-IMG-1
      COW-IMG-2))

(define (render-cat c)
  (place-image (select-img c) (cow-x c) COW-Y MTS))
(main p1)