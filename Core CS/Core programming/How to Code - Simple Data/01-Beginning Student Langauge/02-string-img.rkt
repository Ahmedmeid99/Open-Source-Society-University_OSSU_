;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 02.BSL) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; String
"Hello world"
(string-append "ahmed" " " "eid"); "ahmed eid"
(string-length "ahmed") ; 5
(substring "carbou" 0 3) ; car

; Images
(circle 10 "solid" "red") ; 
(rectangle 30 60 "outline" "blue") ; 
(text "Hello" 24 "red");img =>

(above (circle 10 "solid" "red")
       (circle 20 "solid" "blue")
       (circle 30 "solid" "green"))

(beside (circle 10 "solid" "red")
        (circle 20 "solid" "blue")
        (circle 30 "solid" "green"))

(overlay (circle 10 "solid" "red")
         (circle 20 "solid" "blue")
         (circle 30 "solid" "green"))