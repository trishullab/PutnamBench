theory putnam_1978_a3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1978_a3_solution :: "nat" where
"putnam_1978_a3_solution \<equiv> undefined"
(* 2 *)
theorem putnam_1978_a3:
  fixes p :: "real poly"
    and I :: "nat \<Rightarrow> real"
  defines "p \<equiv> 2 * (monom 1 6 + monom 1 0) + 4 * (monom 1 5 + monom 1 1) + 3 * (monom 1 4 + monom 1 2) + monom 5 3" 
    and "I \<equiv> \<lambda> k :: nat. interval_lebesgue_integral lebesgue 0 PInfty (\<lambda> x :: real. x^k / (poly p x))"
  shows "(\<forall> k \<in> {1..4}. I putnam_1978_a3_solution \<le> I k) \<and> (putnam_1978_a3_solution \<in> {1 :: nat..4})"
  sorry


end