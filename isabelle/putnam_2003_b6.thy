theory putnam_2003_b6 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Set_Integral"
begin

theorem putnam_2003_b6:
  fixes f :: "real \<Rightarrow> real"
  assumes hf : "continuous_on UNIV f"
  shows "set_lebesgue_integral lebesgue {(x, y). 0 \<le> x \<and> x \<le> 1 \<and> 0 \<le> y \<and> y \<le> 1} (\<lambda> t :: real \<times> real. \<bar>f (fst t) + f (snd t)\<bar>)
        \<ge> interval_lebesgue_integral lebesgue 0 1 f"
  sorry

end