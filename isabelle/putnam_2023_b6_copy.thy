theory putnam_2023_b6 imports Complex_Main
"HOL-Analysis.Determinants"
begin

(* uses (nat \<Rightarrow> 'n) instead of (Fin n \<Rightarrow> 'n) *)
theorem putnam_2023_b6:
  fixes n :: nat
  and S :: "int^'n^'n"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hS: "\<exists>pnind::nat\<Rightarrow>'n. (pnind ` {0..(n-1)} = UNIV \<and> (\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. S$(pnind i)$(pnind j) = card {(a::nat,b::nat). a*(i+1) + b*(j+1) = n}))"
  shows "det S = ( (\<lambda>n::nat. (-1)^(nat (\<lceil>n/2\<rceil>-1)) * 2 * \<lceil>n/2\<rceil>) ) n"
  sorry

end
