theory putnam_1972_a6 imports Complex_Main
"HOL-Analysis.Interval_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1972_a6:
  fixes f :: "real \<Rightarrow> real"
  and n :: nat
  assumes hfintegrable: "interval_lebesgue_integrable lebesgue 0 1 f"
  and hfint: "\<forall>i::nat\<in>{0..(n-1)}. interval_lebesgue_integral lebesgue 0 1 (\<lambda>x::real. x^i * (f x)) = 0"
  and hfintlast: "interval_lebesgue_integral lebesgue 0 1 (\<lambda>x::real. x^n * (f x)) = 1"
  shows "\<exists>S::real set. S \<subseteq> {0..1} \<and> emeasure lebesgue S > 0 \<and> (\<forall>x\<in>S. \<bar>f x\<bar> \<ge> 2^n*(n + 1))"
  sorry

end
