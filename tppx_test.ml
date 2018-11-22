open Tast_mapper

let () = Random.self_init ()

let newmapper argv =
  {default with
     expr = (fun mapper expr ->
       match expr with
       | {exp_attributes = [{attr_name = {txt = "swap"}}];
          exp_desc = Texp_tuple [exp_a; exp_b];
          exp_type = {desc = Ttuple [typ_a; typ_b]}}
            when typ_a.desc = typ_b.desc && Random.bool () ->
              {expr with exp_desc = Texp_tuple [exp_b; exp_a]}
       | other -> default.expr mapper other);
  }

let () =
  register "tppx_test" newmapper

