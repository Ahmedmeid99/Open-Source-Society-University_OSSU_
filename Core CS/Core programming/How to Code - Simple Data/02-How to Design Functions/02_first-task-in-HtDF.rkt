;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 02_first-task-in-HtDF) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;;;;;;;;;;;;;;;;;;;;;;
; design a function that pluralizes a given word
; word -> words
;number -> "you must add a string?"
;;;;;;;;;;;;;;;;;;;;;;

;string -> string
;return the same word followed by s

;(define (plural_it word) "hi") =>(stub)

;(check-expect (plural_it "dev") "devs") =>(test)

(check-expect (plural_it "dev") "devs")

(define (plural_it word)
  (string-append word "s"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; take image and return area 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;image -> area (Natural)          => signature
; return area ( height * width )  => purpoe

;(define (img-area img) 0)        => stub

;(define (img-area img)           => template
;  (... img))                     => code body

(define (image-area img)
  (* (image-width img) (image-height img)))
;(image-area IMG)

(define IMG (rectangle 2 3 "solid" "blue"));var IMG
(check-expect (image-area IMG) 6); => test


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; check image is tall or not 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;image -> Boolen (true , false)                    => signature
; return true if height > width else return false  => purpoe
;(define (tall? img) false)                        => stub
;(define (tall? img)                               => template
;        (... img)

(check-expect (tall? (rectangle 2 3 "solid" "blue")) true)
;[1]
;(define (tall? img)
;  (if (> (image-height img) (image-width img))
;      true
;      false
;          ))
;[2]
(define (tall? img)
   (> (image-height img) (image-width img)))