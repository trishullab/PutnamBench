theory putnam_1998_b1 imports Complex_Main
begin

definition putnam_1998_b1_solution::real where "putnam_1998_b1_solution \<equiv> undefined"
(* 6 *)
theorem putnam_1998_b1:
  shows "putnam_1998_b1_solution = (LEAST y. (\<exists>x::real > 0. y = ((x+1/x)^6 - (x^6 + 1/x^6) - 2) / ((x+1/x)^3 + (x^3 + 1/x^3))))"
  sorry

end