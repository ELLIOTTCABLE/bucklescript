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







let js_array_ctor = "Array"
let js_type_number = "number"
let js_type_string = "string"
let js_type_object = "object"
let js_type_boolean = "boolean"
let js_undefined = "undefined"
let js_prop_length = "length"

let prim = "prim"
let param = "param"
let partial_arg = "partial_arg"
let tmp = "tmp"

let create = "create" (* {!Caml_exceptions.create}*)

let runtime = "runtime" (* runtime directory *)

let stdlib = "stdlib"

let imul = "imul" (* signed int32 mul *)

let setter_suffix = "#="
let setter_suffix_len = String.length setter_suffix

let debugger = "debugger"
let unsafe_downgrade = "unsafe_downgrade"
let fn_run = "fn_run"
let method_run = "method_run"

let fn_method = "fn_method"
let fn_mk = "fn_mk"
(*let js_fn_runmethod = "js_fn_runmethod"*)

let bs_deriving = "bs.deriving"
let bs_deriving_dot = "bs.deriving."
let bs_type = "bs.type"


(** nodejs *)
let node_modules = "node_modules"
let node_modules_length = String.length "node_modules"
let package_json = "package.json"
let bsconfig_json = "bsconfig.json"
let build_ninja = "build.ninja"

(* Name of the library file created for each external dependency. *)
let library_file = "lib"

let ext_make = Ext_file_extension.make

let file_extension_a = ext_make "a"
let file_extension_cmj = ext_make "cmj"
let file_extension_cmo = ext_make "cmo"
let file_extension_cma = ext_make "cma"
let file_extension_cmi = ext_make "cmi"
let file_extension_cmx = ext_make "cmx"
let file_extension_cmxa = ext_make "cmxa"
let file_extension_mll = ext_make "mll"
let file_extension_ml = ext_make "ml"
let file_extension_mli = ext_make "mli"
let file_extension_re = ext_make "re"
let file_extension_rei = ext_make "rei"
let file_extension_mlmap = ext_make "mlmap"

let file_extension_cmt = ext_make "cmt"
let file_extension_cmti = ext_make "cmti"
let file_extension_mlast = ext_make "mlast"
let file_extension_mlast_simple = ext_make "mlast_simple"
let file_extension_mliast = ext_make "mliast"
let file_extension_reast = ext_make "reast"
let file_extension_reiast = ext_make "reiast"
let file_extension_mliast_simple = ext_make "mliast_simple"
let file_extension_d = ext_make "d"

let file_extension_js = ext_make "js"
let file_extension_mjs = ext_make "mjs"
let file_extension_cjs = ext_make "cjs"
let file_extension_bs_js = ext_make ~tagged:true "js"
let file_extension_bs_mjs = ext_make ~tagged:true "mjs"
let file_extension_bs_cjs = ext_make ~tagged:true "cjs"
let file_extension_gen_js = ext_make "gen.js"
let file_extension_gen_tsx = ext_make "gen.tsx"
let file_extension_tsx = ext_make "tsx"

let commonjs = "commonjs"

let es6 = "es6"
let es6_global = "es6-global"

let unused_attribute = "Unused attribute "
let dash_nostdlib = "-nostdlib"

let reactjs_jsx_ppx_2_exe = "reactjs_jsx_ppx_2.exe"
let reactjs_jsx_ppx_3_exe  = "reactjs_jsx_ppx_3.exe"

let native = "native"
let bytecode = "bytecode"
let js = "js"



(** Used when produce node compatible paths *)
let node_sep = "/"
let node_parent = ".."
let node_current = "."

let gentype_import = "genType.import"

let bsbuild_cache = ".bsbuild"

let sourcedirs_meta = ".sourcedirs.json"
