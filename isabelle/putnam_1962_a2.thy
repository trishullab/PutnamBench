theory putnam_1962_a2 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1962_a2_solution :: "(real \<Rightarrow> real) set" where "putnam_1962_a2_solution \<equiv> undefined"
(* {f :: real \<Rightarrow> real. \<exists> a c :: real. a \<ge> 0 \<and> f = (\<lambda> x. a / (1 - c * x)^2)} *)
theorem putnam_1962_a2:
  fixes hf :: "real \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
    and hfinf :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  defines "hf \<equiv> \<lambda> (e :: real) (f :: real \<Rightarrow> real). (\<forall> x :: real. f x \<ge> 0) \<and> (\<forall> x \<in> {0<..<e}. (interval_lebesgue_integral lebesgue 0 x f) / x = sqrt ((f 0) * (f x)))"
    and "hfinf \<equiv> \<lambda> (f :: real \<Rightarrow> real). \<forall> x > 0. (interval_lebesgue_integral lebesgue 0 x f) / x = sqrt((f 0) * (f x))"
  shows "(\<forall> f :: real \<Rightarrow> real. (hfinf f \<longrightarrow> (\<exists> g \<in> putnam_1962_a2_solution. \<forall> x \<ge> 0. g x = f x)) \<and> 
  (\<forall> e > 0. hf e f \<longrightarrow> (\<exists> g \<in> putnam_1962_a2_solution. \<forall> x \<in> {0..<e}. g x = f x))) \<and> 
  (\<forall> f \<in> putnam_1962_a2_solution. hfinf f \<or> (\<exists> e > 0. hf e f))"
  sorry

end