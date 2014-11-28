
(**
 * Solution to Project Euler problem 2.
 *)

let fs limit = 
  let pred n =
    (n mod 2 = 0) in
  let comb s x =
    if (pred x) then s + x 
    else s in
  let rec fs_helper acc i prev =
    if (i >= limit) then acc
    else fs_helper (comb acc i) (i+prev) i in
  fs_helper 0 1 0;;

let x = fs 4000000 in
    Printf.fprintf stdout "value is: %d\n" x;;
