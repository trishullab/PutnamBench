theory putnam_2014_a2 imports Complex_Main
"HOL-Analysis.Determinants"
begin

definition putnam_2014_a2_solution :: "nat \<Rightarrow> real" where "putnam_2014_a2_solution \<equiv> undefined"
(* (\<lambda>n::nat. (-1)^(n-1) / (fact (n-1) * fact n)) *)
theorem putnam_2014_a2:
  fixes n :: nat
  and A :: "real^'n^'n"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hA: "\<exists>pnind::nat\<Rightarrow>'n. pnind ` {0..(n-1)} = UNIV \<and> (\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. A$(pnind i)$(pnind j) = 1 / min (i+1) (j+1))"
  shows "det A = putnam_2014_a2_solution n"
  sorry

end
