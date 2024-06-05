theory putnam_1967_b3 imports Complex_Main
"HOL-Library.Periodic_Fun"
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1967_b3:
  fixes f g :: "real \<Rightarrow> real"
  assumes fgcont: "continuous_on UNIV f \<and> continuous_on UNIV g"
  and fgperiod: "periodic_fun_simple' f \<and> periodic_fun_simple' g"
  shows "filterlim (\<lambda>n::int. interval_lebesgue_integral lebesgue 0 1 (\<lambda>x::real. f x * g (n*x))) (nhds ((interval_lebesgue_integral lebesgue 0 1 f) * (interval_lebesgue_integral lebesgue 0 1 g))) at_top"
  sorry

end
