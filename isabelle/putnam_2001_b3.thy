theory putnam_2001_b3 imports
Complex_Main
begin

definition putnam_2001_b3_solution :: real where "putnam_2001_b3_solution \<equiv> undefined"
(* 3 *)
theorem putnam_2001_b3:
  shows "(\<Sum> n :: nat. (2 powr (round (sqrt (n + 1))) + 2 powr (- round (sqrt (n + 1)))) / 2 powr (n + 1)) = putnam_2001_b3_solution"
  sorry

end