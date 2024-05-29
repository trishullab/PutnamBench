theory putnam_2006_b4 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2006_b4_solution :: "nat \<Rightarrow> nat" where "putnam_2006_b4_solution \<equiv> undefined"
(* (\<lambda>k::nat. 2^k) *)
theorem putnam_2006_b4:
  fixes n :: nat
  and k :: nat
  and Z :: "(real^'n) set"
  and max :: nat
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hk: "k \<le> n"
  defines "Z \<equiv> {P::real^'n. (\<forall>j::'n. P$j = 0 \<or> P$j = 1)}"
  and "max \<equiv> GREATEST ZVcard::nat. (\<exists>V::(real^'n) set. subspace V \<and> dim V = k \<and> ZVcard = card (Z \<inter> V))"
  shows "max = putnam_2006_b4_solution k"
  sorry

end
