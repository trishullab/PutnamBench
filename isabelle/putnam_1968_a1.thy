theory putnam_1968_a1 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1968_a1:
  shows "22 / 7 - pi = interval_lebesgue_integral lebesgue 0 1 (\<lambda> x. x ^ 4 * (1 - x) ^ 4 / (1 + x ^ 2))"
  sorry

end