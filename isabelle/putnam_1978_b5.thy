theory putnam_1978_b5 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1978_b5_solution::"real poly" where "putnam_1978_b5_solution \<equiv> undefined"
(* [: 1, 0, -4, 0, 4 :] *)
theorem putnam_1978_b5:
  fixes S::"(real poly) set"
  defines "S \<equiv> { p::(real poly). degree p = 4 \<and> (\<forall>x \<in> {-1..1::real}. (poly p x) \<in> {0..1})}"
  shows "putnam_1978_b5_solution \<in> S \<and> (\<forall>p \<in> S. coeff p 4 \<le> coeff putnam_1978_b5_solution 4)"
  sorry

end