theory putnam_2007_b2 imports
Complex_Main
"HOL-Analysis.Derivative"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2007_b2:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "f C1_differentiable_on {0..1}"
  and hfint: "set_lebesgue_integral lebesgue {0..1} f = 0"
  shows "\<forall> \<alpha> \<in> {0<..<1}. \<bar>set_lebesgue_integral lebesgue {0..\<alpha>} f\<bar> \<le> (1 / 8) * (GREATEST y. \<exists> x \<in> {0..1}. \<bar>deriv f x\<bar> = y)"
  sorry

end