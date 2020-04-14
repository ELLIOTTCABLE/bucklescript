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

(** An opaque representation of a file-extension, differentiating between those
    which we know how to clean up after ([".bs.js"], [".bs.mjs"], etc), and
    those which we cannot ([".js"], [".mjs"], etc.) *)
type t = private Tagged of string | Bare of string

val make : ?tagged:bool -> string -> t
(** [make ?tagged str] creates an [Ext_file_extension.t] of [str]; i.e.
    [make ~tagged:true "js"] would produce [Tagged "js"], corresponding to
    [".bs.js"].

    Does not manipulate or check the value of [str] in any way; use
    [of_string_opt] instead where possible. *)

val to_string : t -> string
(** Produces a plain string for this file-extension, e.g.
    [to_string (Tagged "js")] would produce [".bs.js"]. *)

val of_string_opt : string -> t option
(** Parses a plain string into a file-extension, i.e. [of_string_opt ".bs.js"]
    would produce [Some (Tagged "js")].

    Leading periods are removed, and a leading [".bs"] component is interpreted
    as a [Tagged] extension. An empty extension (i.e. "" or ".bs." or ".")
    result in [None], all other values result in [Some str].

    Does not test for supported extensions or report warning-messages; that is
    left up to the caller. *)

val append_to : string -> t -> string
(** Appends the given file-extension to the given path-string; i.e.
    [append_to "./foo" (Tagged "js")] would produce ["./foo.bs.js"].

    Intended to be used as an infix, i.e.:

    {v
    let (//.) = Ext_file_extension.append_to

    "./foo" //. an_ext
    v} *)
