# tppx_test
Example typed PPX. Now we can do:

`ocamlopt -tppx tppx_test example.ml`

and see:

```
$ocamlopt -tppx ./tppx_showtype example.ml 
42
```

Do not try to install -- ocamlfind doesn't know about tppx (yet).

