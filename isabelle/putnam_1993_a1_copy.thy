theory putnam_1993_a1 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1993_a1:
  shows "( 4/9 ) > 0 \<and> ( 4/9 ) < (4 * (sqrt 2) / 9) \<and> 
    interval_lebesgue_integral lebesgue 0 ((sqrt 2) / 3) (\<lambda>x. max 0 (( 4/9 ) - (2 * x - 3 * x^3)))
    = interval_lebesgue_integral lebesgue 0 ((sqrt 6) / 3) (\<lambda>x. max 0 ((2 * x - 3 * x^3) - ( 4/9 )))"
  sorry

end