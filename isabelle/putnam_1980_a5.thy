theory putnam_1980_a5 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Interval_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1980_a5:
  fixes P :: "real poly"
  and xeqs :: "real \<Rightarrow> bool"
  defines "xeqs \<equiv> \<lambda> x :: real. 0 = interval_lebesgue_integral lebesgue 0 x (\<lambda> t. poly P t * sin t) \<and> 0 = interval_lebesgue_integral lebesgue 0 x (\<lambda> t. poly P t * cos t)"
  assumes Pnonconst: "degree P > 0"
  shows "finite {x :: real. xeqs x}"
  sorry

end