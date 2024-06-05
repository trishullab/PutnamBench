theory putnam_1980_a6 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1980_a6_solution :: real where "putnam_1980_a6_solution \<equiv> undefined"
(* 1 / exp 1 *)
theorem putnam_1980_a6:
  fixes C :: "(real \<Rightarrow> real) set"
  and uleint :: "real \<Rightarrow> bool"
  defines "C \<equiv> {f :: real \<Rightarrow> real. f C1_differentiable_on {0..1}  \<and> f 0 = 0 \<and> f 1 = 1}" 
  and "uleint \<equiv> \<lambda> u :: real. \<forall> f \<in> C. u \<le> interval_lebesgue_integral lebesgue 0 1 (\<lambda> x. \<bar>deriv f x - f x\<bar>)"
  shows "(GREATEST u. uleint u) = putnam_1980_a6_solution"
  sorry

end