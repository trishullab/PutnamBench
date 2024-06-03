theory putnam_1980_a3 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1980_a3:
  shows "interval_lebesgue_integral lebesgue 0 (pi / 2) (\<lambda> x :: real. 1 / (1 + (tan x) powr (sqrt 2))) = ( pi / 4 )"
  sorry

end