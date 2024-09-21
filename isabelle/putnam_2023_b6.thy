theory putnam_2023_b6 imports Complex_Main
"HOL-Analysis.Determinants"
begin

(* uses (nat \<Rightarrow> 'n) instead of (Fin n \<Rightarrow> 'n) *)
definition putnam_2023_b6_solution :: "int \<Rightarrow> int" where "putnam_2023_b6_solution \<equiv> undefined "
(*  (\<lambda>n::int. (-1)^(nat (\<lceil>(rat_of_int n)/2\<rceil>+1)) * 2 * \<lceil>(rat_of_int n)/2\<rceil>) *)
theorem putnam_2023_b6:
  fixes n :: int
  and S :: "int^'n^'n"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = (nat n)"
  and hS: "\<exists>pnind::int\<Rightarrow>'n. (pnind ` {0..(n-1)} = UNIV \<and> (\<forall>i::int\<in>{0..(n-1)}. \<forall>j::int\<in>{0..(n-1)}. S$(pnind i)$(pnind j) = card {(a::int,b::int). a*(i+1) + b*(j+1) = n}))"
  shows "det S = putnam_2023_b6_solution n"
  sorry

end