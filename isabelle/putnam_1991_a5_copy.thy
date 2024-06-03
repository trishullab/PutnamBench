theory putnam_1991_a5 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1991_a5:
  fixes f :: "real \<Rightarrow> real"
  defines "f \<equiv> \<lambda> y. interval_lebesgue_integral lebesgue 0 y (\<lambda> x. sqrt (x ^ 4 + (y - y ^ 2) ^ 2))"
  shows "(GREATEST I. \<exists> y \<in> {0..1}. f y = I) = ( 1 / 3 )"
  sorry

end