theory putnam_1969_a4 imports Complex_Main
"HOL-Analysis.Interval_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1969_a4:
  shows "filterlim (\<lambda>n::int. (\<Sum>i::int=1..n. (-1) powi (i+1) * i powi (-i))) (nhds (interval_lebesgue_integral lebesgue 0 1 (\<lambda>x::real. x powr x))) at_top"
  sorry

end
