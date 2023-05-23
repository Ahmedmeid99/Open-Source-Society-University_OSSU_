(* ********************** *)
(* note *)
(* 
    this file is writen by standard Ml language 
    and you can add this extensions for this kind of files 
    ( sml ,sig ,cm ,lex ,fun ,grm)
 *)

(* ********************** *)
 (* craete a variable *)

 val x = 3 ;
    (* static environment  x -> int *)
    (* dynamic environment x -> 3 *)

val x = 4 ;  (* reset value of x *)
(*
    val x = <hidden> : int
    val x = 4 : int
*)

(* ********************** *)
(* data types *)
(* 
    22 31  127  -> int
    true false  -> bool
    ()          -> unit
*)

(* ********************** *)
(* create if conditoin *)
if x >= 4 
    then "x = 4" 
    else "x != 4" ;
    
(* 
    val x = 4 : int
    val it = "x = 4" : string
*)

(* ********************** *)
(* create a function  *)
fun cal (x : int, y : int) =
    x + y ;

cal(1,2);
(* 
    val cal = fn : int * int -> int
    val it = 3 : int
*)
(*  int * int == int , int  *)
(* ********************** *)
(* recursion *)
fun pow (x : int, y : int) =
    if y = 0
    then 1
    else x * pow( x , y-1);
    ;

val will_be_4 = pow(2,2);    (* => ( 2 * 1 * 2 * 1) *)
val will_be_8 = pow(2,3);  (* => (2 * 2 * 2 * 1) *)
val will_be_27 = pow(3,3);  (* => (3 * 3 * 3 * 1) *)

val get_results = pow(3,2) + pow(2,4);