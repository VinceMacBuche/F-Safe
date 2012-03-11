(*****************************************************************************)
(*     This file is part of FSafe.                                           *)
(*                                                                           *)
(*     FSafe is free software: you can redistribute it and/or modify         *)
(*     it under the terms of the GNU General Public License as published by  *)
(*     the Free Software Foundation, either version 3 of the License, or     *)
(*     (at your option) any later version.                                   *)
(*                                                                           *)
(*     FSafe is distributed in the hope that it will be useful,              *)
(*     but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*     GNU General Public License for more details.                          *)
(*                                                                           *)
(*     You should have received a copy of the GNU General Public License     *)
(*     along with FSafe.  If not, see <http://www.gnu.org/licenses/>.        *)
(*                                                                           *)
(*                                                                           *)
(* File        : termination.ml                                              *)
(* Description : termination algorithms                                      *)
(*                                                                           *)
(*****************************************************************************)

open Printf
open Config

(* termination_check : ?? -> ?? *)
let termination_check ast =
  (* callgraph building *)
  if !verbose then printf "** Building callgraph...\n";
  let g = Callgraph.build_callgraph ast in
  if !debug_on then (
    Callgraph.dot_of_callgraph g;
    printf "callgraph saved in callgraph.dot\n"
  );
  [];

