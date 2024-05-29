theory putnam_1993_a1 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

definition putnam_1993_a1_solution::real where "putnam_1993_a1_solution \<equiv> undefined"
(* 4/9 *)
theorem putnam_1993_a1:
  shows "putnam_1993_a1_solution > 0 \<and> putnam_1993_a1_solution < (4 * (sqrt 2) / 9) \<and> 
    interval_lebesgue_integral lebesgue 0 ((sqrt 2) / 3) (\<lambda>x. max 0 (putnam_1993_a1_solution - (2 * x - 3 * x^3)))
    = interval_lebesgue_integral lebesgue 0 ((sqrt 6) / 3) (\<lambda>x. max 0 ((2 * x - 3 * x^3) - putnam_1993_a1_solution))"
  sorry

end