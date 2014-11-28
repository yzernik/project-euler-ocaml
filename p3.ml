
(**
 * Solution to Project Euler problem 3.
 *)

let largest_prime_factor n = 
  let rec largest_prime_factor_helper x i =
    if (x = i) then x
    else let y = if (x mod i = 0)
		 then x/i
		 else x in
	 largest_prime_factor_helper y (i+1) in
  largest_prime_factor_helper n 2;;

let x = largest_prime_factor 600851475143 in
    Printf.fprintf stdout "value is: %d\n" x;;
