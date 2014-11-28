
(**
 * Solution to Project Euler problem 1.
 *)

let mult_sum limit = 
  let pred n =
    (n mod 3 = 0) || (n mod 5 = 0) in
  let comb s x =
    if (pred x) 
    then s + x 
    else s in
  let rec mult_sum_helper acc i =
    if (i = limit)
    then acc
    else mult_sum_helper (comb acc i) (i+1) in
  mult_sum_helper 0 0;;

let x = mult_sum 1000 in
    Printf.fprintf stdout "value is: %d\n" x;;
