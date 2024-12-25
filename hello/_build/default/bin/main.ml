(* Define a recursive function to calculate the factorial of a number *)
let rec factorial n =
  if n = 0 then 1
  else n * factorial (n - 1)

(* Define a main function to print the factorial of a given number *)
let () =
  let number = 5 and eee = 55 in
  Printf.printf "The factorial of %d is %d skibidi %d\n" number (factorial number) eee
