theory putnam_2016_b4 imports
Complex_Main
"HOL-Analysis.Determinants"
begin

definition putnam_2016_b4_solution :: "nat \<Rightarrow> real" where "putnam_2016_b4_solution \<equiv> undefined"
(* \<lambda> n :: nat. fact (2 * n) / (4 ^ n * fact n) *)
theorem putnam_2016_b4:
  fixes n :: nat
  and mats01 :: "(real^'m^'m) set"
  defines "mats01 \<equiv> {A :: real^'m^'m. \<forall> i j. A$i$j = 0 \<or> A$i$j = 1}"
  assumes mcard: "CARD('m) = 2 * n"
  and npos: "n \<ge> 1"
  shows "(\<Sum> A \<in> mats01. det (A - transpose A)) / card mats01 = putnam_2016_b4_solution n"
  sorry

end