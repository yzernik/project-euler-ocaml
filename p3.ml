
(**
 * Solution to Project Euler problem 3.
 *)

let lpf n = 
  let rec lpf_helper x i =
    if (x = i) then x
    else let y = 
	   if (x mod i = 0) then x/i
	   else x in
	 lpf_helper y (i+1) in
  lpf_helper n 2;;
  
let x = lpf 600851475143 in
    Printf.fprintf stdout "value is: %d\n" x;;
