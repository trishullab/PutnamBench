theory putnam_2016_a6 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2016_a6:
  shows "(LEAST C :: real. \<forall> P :: real poly. (degree P = 3) \<longrightarrow> (\<exists> x \<in> {0..1}. poly P x = 0) \<longrightarrow> set_lebesgue_integral lebesgue {0..1} (\<lambda> x. \<bar>poly P x\<bar>) \<le> C * (GREATEST y. \<exists> x \<in> {0..1}. \<bar>poly P x\<bar> = y)) = ( 5 / 6 )"
  sorry

end