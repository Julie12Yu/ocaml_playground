(* Learning OCaml - solving q's from here: https://ocaml.org/exercises *)

(* Q1: Tail of a List *)
let rec last lst =
  match lst with
  | [] -> None
  | [lastElement] -> Some lastElement (* Need "Some" here to allow for a type to be returned. *)
  | _ :: restArr -> last(restArr) (* _ denotes the 'first' element in this array, but we don't store it b/c we don't care to use it. *)

(* Testing for Q1 *)
let () =
  let print_result result =
    match result with
    | None -> print_endline "None"
    | Some x -> Printf.printf "%d\n" x
  in
  print_result (last []);
  print_result (last [1]);
  print_result (last [1; 2; 3]);