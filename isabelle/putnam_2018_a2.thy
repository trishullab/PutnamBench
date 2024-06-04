theory putnam_2018_a2 imports Complex_Main
"HOL-Analysis.Determinants"
begin

definition putnam_2018_a2_solution :: "nat \<Rightarrow> real" where "putnam_2018_a2_solution \<equiv> undefined"
(* (\<lambda>n::nat. if n = 1 then 1 else -1) *)
theorem putnam_2018_a2:
  fixes n :: nat
  and S :: "'n::finite \<Rightarrow> (nat set)"
  and M :: "real^'n^'n"
  assumes npos: "n \<ge> 1"
  and pncard: "CARD('n) = 2^n - 1"
  and hS: "range S = (Pow {1..n}) - {{}}"
  and hM: "\<forall>i j::'n. M$i$j = (if (S i \<inter> S j = {}) then 0 else 1)"
  shows "det M = putnam_2018_a2_solution n"
  sorry

end
