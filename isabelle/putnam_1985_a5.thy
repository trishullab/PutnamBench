theory putnam_1985_a5 imports Complex_Main 
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1985_a5_solution :: "nat set" where "putnam_1985_a5_solution \<equiv> undefined"
(* {3, 4, 7, 8} *)
theorem putnam_1985_a5:
  fixes I :: "nat \<Rightarrow> real"
  defines "I \<equiv> \<lambda> m. interval_lebesgue_integral lebesgue 0 (2 * pi) (\<lambda>x. (\<Prod>k=1..m. cos (k * x)))"
  shows "putnam_1985_a5_solution = {m. m \<in> {1..10} \<and> I m \<noteq> 0}"
  sorry

end