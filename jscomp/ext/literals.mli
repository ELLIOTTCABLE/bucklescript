(* Copyright (C) 2015-2016 Bloomberg Finance L.P.
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






val js_array_ctor : string
val js_type_number : string
val js_type_string : string
val js_type_object : string
val js_type_boolean : string
val js_undefined : string
val js_prop_length : string

val param : string
val partial_arg : string
val prim : string

(**temporary varaible used in {!Js_ast_util} *)
val tmp : string

val create : string
val runtime : string
val stdlib : string
val imul : string

val setter_suffix : string
val setter_suffix_len : int


val debugger : string

val unsafe_downgrade : string
val fn_run : string
val method_run : string
val fn_method : string
val fn_mk : string

(** callback actually, not exposed to user yet *)
(* val js_fn_runmethod : string *)

val bs_deriving : string
val bs_deriving_dot : string
val bs_type : string

(** nodejs *)

val node_modules : string
val node_modules_length : int
val package_json : string
val bsconfig_json : string
val build_ninja : string

(* Name of the library file created for each external dependency. *)
val library_file : string

val file_extension_a : Ext_file_extension.t
val file_extension_cmj : Ext_file_extension.t
val file_extension_cmo : Ext_file_extension.t
val file_extension_cma : Ext_file_extension.t
val file_extension_cmi : Ext_file_extension.t
val file_extension_cmx : Ext_file_extension.t
val file_extension_cmxa : Ext_file_extension.t
val file_extension_ml : Ext_file_extension.t
val file_extension_mlast : Ext_file_extension.t
val file_extension_mlast_simple : Ext_file_extension.t
val file_extension_mliast : Ext_file_extension.t
val file_extension_reast : Ext_file_extension.t
val file_extension_reiast : Ext_file_extension.t

val file_extension_mliast_simple : Ext_file_extension.t
val file_extension_mlmap : Ext_file_extension.t
val file_extension_mll : Ext_file_extension.t
val file_extension_re : Ext_file_extension.t
val file_extension_rei : Ext_file_extension.t

val file_extension_d : Ext_file_extension.t
val file_extension_js : Ext_file_extension.t
val file_extension_mjs : Ext_file_extension.t
val file_extension_cjs : Ext_file_extension.t
val file_extension_bs_js : Ext_file_extension.t
val file_extension_bs_mjs : Ext_file_extension.t
val file_extension_bs_cjs : Ext_file_extension.t
val file_extension_gen_js : Ext_file_extension.t
val file_extension_gen_tsx: Ext_file_extension.t

val file_extension_tsx : Ext_file_extension.t

val file_extension_mli : Ext_file_extension.t
val file_extension_cmt : Ext_file_extension.t
val file_extension_cmti : Ext_file_extension.t

val commonjs : string

val es6 : string
val es6_global : string

val unused_attribute : string
val dash_nostdlib : string

val reactjs_jsx_ppx_2_exe : string
val reactjs_jsx_ppx_3_exe : string

val native : string
val bytecode : string
val js : string

val node_sep : string
val node_parent : string
val node_current : string
val gentype_import : string

val bsbuild_cache : string

val sourcedirs_meta : string
