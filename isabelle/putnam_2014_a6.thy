theory putnam_2014_a6 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

(* uses (nat \<Rightarrow> real^'n^'n) instead of (Fin k \<Rightarrow> real^'n^'n) *)
definition putnam_2014_a6_solution :: "nat \<Rightarrow> nat" where "putnam_2014_a6_solution \<equiv> undefined"
(* (\<lambda>n::nat. n^n) *)
theorem putnam_2014_a6:
  fixes n :: nat
  and kex :: "nat \<Rightarrow> bool"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hkex: "\<forall>k::nat\<ge>1. kex k = (\<exists>M N::nat\<Rightarrow>real^'n^'n. \<forall>i::nat\<in>{0..(k-1)}. \<forall>j::nat\<in>{0..(k-1)}. ((\<exists>p::'n. (M i ** N j)$p$p = 0) \<longleftrightarrow> i \<noteq> j))"
  shows "(GREATEST k::nat. k \<ge> 1 \<and> kex k) = putnam_2014_a6_solution n"
  sorry

end
