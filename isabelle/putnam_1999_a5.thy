theory putnam_1999_a5 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1999_a5:
  shows "\<exists> C :: real. \<forall> p :: real poly. degree p = 1999 \<longrightarrow> \<bar>poly p 0\<bar> \<le> C * (interval_lebesgue_integral lebesgue (-1) 1 (\<lambda> x. \<bar>poly p x\<bar>))"
  sorry

end