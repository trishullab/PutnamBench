theory putnam_1968_b4 imports 
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1968_b4:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "continuous_on UNIV f \<and> (\<exists> r :: real. ((\<lambda> y. interval_lebesgue_integral lebesgue (-y) y f) \<longlongrightarrow> r) at_top)"
  shows "\<exists> r :: real. ((\<lambda> y. interval_lebesgue_integral lebesgue (-y) y (\<lambda> x. f (x - 1 / x))) \<longlongrightarrow> r) at_top \<and> ((\<lambda> y. interval_lebesgue_integral lebesgue (-y) y f) \<longlongrightarrow> r) at_top"
  sorry

end