open Js_of_ocaml

let () =
  let ()      = Firebug.console ## log (Js.string "start") in
  let prefix  = "\006\161\159" in
  let address = "tz1gptNykuiTaYvGECzLNPDbZ9ybcQxwHhD4" in
  let encoded = Tezos_base58.encode ~prefix address in
  let message = Format.asprintf "%a" Tezos_base58.pp encoded in
  let ()      = Firebug.console ## log (Js.string message) in
  ()
  
