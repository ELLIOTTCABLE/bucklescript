(* Copyright (C) 2017 Authors of BuckleScript
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

type module_system = NodeJS | Es6 | Es6_global

val runtime_dir_of_module_system : module_system -> string

val runtime_package_path : module_system -> string -> string

type location_descriptor = {
  module_system : module_system;
  path : string;
  extension : string;
}

type t

val is_runtime_package : t -> bool

val same_package_by_name : t -> t -> bool

val iter : t -> (location_descriptor -> unit) -> unit

val empty : t
val from_name : string -> t
val is_empty : t -> bool

val dump_package_info : Format.formatter -> t -> unit

val append_location_descriptor_of_string : t -> string -> t
(** used by command line option e.g [-bs-package-output commonjs:xx/path] *)

type package_paths = { rel_path : string; pkg_rel_path : string }

type query_result =
  | Package_script
  | Package_not_found
  | Package_found of package_paths

val get_output_dir : t -> package_dir:string -> module_system -> string

(* Note here we compare the package info by order in theory, we can compare it
   by set semantics *)
val query_package_location_by_module_system : t -> module_system -> query_result
