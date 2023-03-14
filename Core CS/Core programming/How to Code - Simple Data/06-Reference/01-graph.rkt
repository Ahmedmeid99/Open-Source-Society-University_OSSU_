;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 01-graph) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Constant
(define FONT-SIZE 20)
(define FONT-COLOR "black")

(define Y-SCALE 1/200)
(define BAR-WIDTH 30)
(define BAR-COLOR "lighblue")

;; Data definition
(define-struct school (name tuition))

;; school is (make-school String Natural)
;; interp. name is the school's name ,tuition is international-students tuition in USD

(define S1 (make-school "school-1" 27797))
(define S2 (make-school "school-2" 23300))
(define S3 (make-school "school-3" 28500))
#;
(define (fn-for-school s)
  (... (school-name s)
       (school-tuition s)))

;; Template rules used:
;; - compound: (make-school String Natural)


;; Listofschool os one of:
;; - empty
;; - (cons school Listofschool)
;; interp. a list of schools

(define LOS1 empty)
(define LOS2 (cons S1 (cons S2 (cons S3 empty))))  ;=> 3 items
#;
(define (fn-for-list list)
  (cond [(empty? list) (...)]
        [else
         (... (fn-for-school (first list))
              (fn-for-list (rest list)))]))


;; Template rules used:
;; - one of 2 cases
;; - atomic distinct : empty
;; - compound: (cons school Listofschool)
;; - refernce: (first list) is school
;; - self-refernce: (rest list) is Listofschool

;; Functions:
;; base case
;(beside "somthing" (square 0 "solid" "white"))

;(beside(overlay/align "center" "bottom"
;                             (rotate 90 (text "S1" FONT-SIZE FONT-COLOR))
;                             (rectangle BAR-WIDTH (* 8000 Y-SCALE) "outline" "black")
;                             (rectangle BAR-WIDTH (* 8000 Y-SCALE) "solid" "green"))
;       
;              (square 0 "solid" "white"))

(check-expect (chart LOS1) (square 0 "solid" "white"))

(check-expect (chart LOS2)
            
              (beside/align "bottom" (overlay/align "center" "bottom"
                             (rotate 90 (text "school-1" FONT-SIZE FONT-COLOR))
                             (rectangle BAR-WIDTH (* 27797 Y-SCALE) "outline" "black")
                             (rectangle BAR-WIDTH (* 27797 Y-SCALE) "solid" "green"))
       (overlay/align "center" "bottom"
                             (rotate 90 (text "school-2" FONT-SIZE FONT-COLOR))
                             (rectangle BAR-WIDTH (* 23300 Y-SCALE) "outline" "black")
                             (rectangle BAR-WIDTH (* 23300 Y-SCALE) "solid" "green"))

       (overlay/align "center" "bottom"
                             (rotate 90 (text "school-3" FONT-SIZE FONT-COLOR))
                             (rectangle BAR-WIDTH (* 28500 Y-SCALE) "outline" "black")
                             (rectangle BAR-WIDTH (* 28500 Y-SCALE) "solid" "green"))
       
              (square 0 "solid" "white")))

;; school-item -> img
(define (fn-for-school school)
  (overlay/align "center" "bottom"
                             (rotate 90 (text (school-name school) FONT-SIZE FONT-COLOR))
                             (rectangle BAR-WIDTH (* (school-tuition school) Y-SCALE) "outline" "black")
                             (rectangle BAR-WIDTH (* (school-tuition school) Y-SCALE) "solid" "green")))

(fn-for-school S1)
;; list -> chart-img

(define (chart list)
  (cond [(empty? list) (square 0 "solid" "white")]
        [else
         (beside/align "bottom"
                        (fn-for-school (first list))       ;=> (cons ("school-1" 27797) empty) ;("school-1" 27797) is the first
                        (chart (rest list))
                        )]))



(chart LOS2)