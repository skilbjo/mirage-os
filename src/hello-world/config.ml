
open Mirage

let main =
  foreign
    ~packages:[package "duration"]
    "Unikernel.Hello" (time @-> job)

let () =
  register "hello-world" [main $ default_time]
