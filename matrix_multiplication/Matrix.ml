(*****************************************************************************)
(*                                                                           *)
(* F-Safe                                                                    *)
(*                                                                           *)
(* File        : Matrix.ml                                                   *)
(* Description : definition of matrix                                        *)
(*                                                                           *)
(*****************************************************************************)

type relation =
    Inf
  | Eq
  | Unknown

(*      Data must be record per line      *)
(* ex.                                    *)
(*   a f k                                *)
(*   b g l                                *)
(*   c h m                                *)
(*   d i n                                *)
(*   e j o                                *)
(*                                        *)
(* data = [a,f,k,b,g,l,c,h,m,d,i,n,e,j,o] *)
type matrix_of_relations = { data : relation list ; nb_c : int ; nb_l : int }