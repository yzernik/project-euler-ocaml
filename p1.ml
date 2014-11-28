
(**
 * Solution to Project Euler problem 1.
 *)

let ms limit = 
  let pred n =
    (n mod 3 = 0) || (n mod 5 = 0) in
  let comb s x =
    if (pred x) then s + x 
    else s in
  let rec ms_helper acc i =
    if (i = limit) then acc
    else ms_helper (comb acc i) (i+1) in
  ms_helper 0 0;;

let x = ms 1000 in
    Printf.fprintf stdout "value is: %d\n" x;;
