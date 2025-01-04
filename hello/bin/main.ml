(* Learning OCaml - solving q's from here: https://ocaml.org/exercises *)

(* Q1: Tail of a List *)
(* Recursively looking for end *)
let rec last lst =
  match lst with
  | [] -> None
  | [lastElement] -> Some lastElement (* Need "Some" here to allow for a type to be returned. *)
  | _ :: restArr -> last(restArr) (* _ denotes the 'first' element in this array, but we don't store it b/c we don't care to use it. *)


(* Testing for Q1 *)
(*
let () =
  let print_result result =
    match result with
    | None -> print_endline "None"
    | Some x -> Printf.printf "%d\n" x
  in
  print_result (last []);
  print_result (last [1]);
  print_result (last [1; 2; 3]);
*)

(* Q2: Last Two Elements of a List *)
let rec lastTwo lst = 
  match lst with
  | [] -> None
  | [_] -> None (* Again, do not care about the one element case *)
  | lastElOne :: lastElTwo :: [] -> Some (lastElOne, lastElTwo) (* OCaml displays lists weirdly *)
  | _ :: restArr -> lastTwo (restArr)


(* Testing for Q2 *)
let () =
  let test1 = lastTwo [] in
  let test2 = lastTwo [1] in
  let test3 = lastTwo [1; 2] in
  let test4 = lastTwo [1; 2; 3] in
  Printf.printf "%s\n" 
    (match test1 with None -> "None" | Some (x, y) -> Printf.sprintf "Some (%d, %d)" x y);
  Printf.printf "%s\n" 
    (match test2 with None -> "None" | Some (x, y) -> Printf.sprintf "Some (%d, %d)" x y);
  Printf.printf "%s\n" 
    (match test3 with None -> "None" | Some (x, y) -> Printf.sprintf "Some (%d, %d)" x y);
  Printf.printf "%s\n" 
    (match test4 with None -> "None" | Some (x, y) -> Printf.sprintf "Some (%d, %d)" x y)
