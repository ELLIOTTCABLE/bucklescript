(* Copyright (C) 2020- Authors of BuckleScript
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * In addition to the permissions granted to you by the LGPL, you may combine
 * or link a "work that uses the Library" with a publicly distributed version
 * of this file to produce a combined library or application, then distribute
 * that combined work under the terms of your choosing, with no requirement
 * to comply with the obligations normally placed on you by section 4 of the
 * LGPL version 3 (or the corresponding section of a later version of the LGPL
 * should you choose to use a later version).
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. *)

type t = Tagged of string | Bare of string

let make ?(tagged = false) str = if tagged then Tagged str else Bare str

let to_string = function
  | Tagged ext -> ".bs." ^ ext
  | Bare ext -> "." ^ ext


let append_to s ext = s ^ to_string ext

(* TODO: The following functions should probably be in [Ext_string]. *)

(** [drop_prefix ~prefix ?start ?len str] returns a copy of [str], excluding
    [start] characters and, additionally, an instance of [prefix] occuring at
    [start], if present.

    Example: [drop_prefix ~prefix:"bs." ~start:1 ".bs.js"] returns [Some "js"].

    If [str] is too short, or [prefix] does not fully occur in [str] starting at
    [start], then returns [None]. *)
let rec drop_prefix ~prefix ?prefix_len ?(start = 0) ?len s =
  let len =
    match len with
    | Some l -> l
    | None -> String.length s
  in
  let prefix_len =
    match prefix_len with
    | Some l -> l
    | None -> String.length prefix
  in
  let result = drop_prefix_aux prefix prefix_len 0 s len start in
  let chop_idx = if result = -1 then start else result in
  let s = String.sub s chop_idx (len - chop_idx) in
  (result != -1, s)


and drop_prefix_aux (prefix : string) (prefix_len : int) (prefix_i : int)
    (str : string) (str_len : int) (str_i : int) : int =
  if str_i >= str_len then -1
  else if prefix_i >= prefix_len then str_i
  else if String.unsafe_get str str_i != String.unsafe_get prefix prefix_i then
    -1
  else drop_prefix_aux prefix prefix_len (prefix_i + 1) str str_len (str_i + 1)


(** Returns the index of the first character that isn't c; i.e.
    [after_chars '.' "...bs.js"] returns [3], the index of the ["b"]. *)
let rec after_chars c s len = after_chars_aux c s len 0

and after_chars_aux c s len i =
  if i = len then i
  else if String.unsafe_get s i != c then i
  else after_chars_aux c s len (i + 1)


let of_string_opt s =
  let len = String.length s in
  let i = after_chars '.' s len in
  let tagged, ext = drop_prefix ~prefix:"bs." ~start:i s in
  if String.length ext = 0 then None else Some (make ~tagged ext)
