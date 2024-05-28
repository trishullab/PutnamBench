theory putnam_1971_a2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1971_a2_solution :: "(real poly) set" where "putnam_1971_a2_solution \<equiv> undefined"
(* {monom 1 1} *)
theorem putnam_1971_a2:
  shows "\<forall>P::real poly. ((poly P 0 = 0 \<and> (\<forall>x::real. poly P (x^2 + 1) = (poly P x)^2 + 1)) \<longleftrightarrow> P \<in> putnam_1971_a2_solution)"
  sorry

end
