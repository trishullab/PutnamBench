theory putnam_1987_b1 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1987_b1:
  shows "( 1 ) =
     interval_lebesgue_integral lebesgue 2 4 (\<lambda>x. sqrt (ln (9-x)) / (sqrt (ln (9-x)) + sqrt (ln (x+3))))"
  sorry

end