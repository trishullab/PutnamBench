theory putnam_1987_b1 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

definition putnam_1987_b1_solution::real where "putnam_1987_b1_solution \<equiv> undefined"
(* 1 *)
theorem putnam_1987_b1:
  shows "putnam_1987_b1_solution =
     interval_lebesgue_integral lebesgue 2 4 (\<lambda>x. sqrt (ln (9-x)) / (sqrt (ln (9-x)) + sqrt (ln (x+3))))"
  sorry

end