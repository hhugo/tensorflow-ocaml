open Ocamlbuild_plugin
let () =
  dispatch (function
    | Before_options ->
      flag ["ocaml"; "link"] (S [ A "-cclib"; A "-ltensorflow"; A "-cclib"; A "-L../lib" ]);
  (*flag ["ocaml"; "link"] (S [ A "-cclib"; A "-ltensorflow"; A "-cclib"; A "-L../lib2" ]);
   *)
      Options.use_ocamlfind := true
    | After_rules ->
      pdep ["link"] "linkdep" (fun param -> [param]);
      rule "cstubs"
        ~prods:["src/wrapper/%_stubs.c"; "src/wrapper/%_generated.ml"]
        ~deps: ["src/wrapper/%_gen.byte"]
        (fun env build ->
          Cmd (A(env "src/wrapper/%_gen.byte")));
      ocaml_lib "src/tensorflow"
    | _ -> ())
