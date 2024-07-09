theory putnam_2023_b5 imports Complex_Main
"HOL-Number_Theory.Cong"
"HOL-Combinatorics.Permutations"
begin

definition putnam_2023_b5_solution :: "nat set" where "putnam_2023_b5_solution \<equiv> undefined"
(* {n::nat. n = 1 \<or> [n = 2] (mod 4)} *)
theorem putnam_2023_b5:
  fixes n :: nat
  and perm :: bool
  assumes hperm: "perm = (\<forall>m::int. coprime m n \<longrightarrow> (\<exists>p::nat\<Rightarrow>nat. p permutes {1..n} \<and> (\<forall>k::nat\<in>{1..n}. [p (p k) = m*k] (mod n))))"
  shows "(n > 0 \<and> perm) \<longleftrightarrow> n \<in> putnam_2023_b5_solution"
  sorry

end
