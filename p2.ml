
(**
 * Solution to Project Euler problem 2.
 *)

let fib_sum limit = 
  let pred n =
    (n mod 2 = 0) in
  let comb s x =
    if (pred x) 
    then s + x 
    else s in
  let rec fib_sum_helper acc i prev =
    if (i >= limit)
    then acc
    else fib_sum_helper (comb acc i) (i+prev) i in
  fib_sum_helper 0 1 0;;

let x = fib_sum 4000000 in
    Printf.fprintf stdout "value is: %d\n" x;;
