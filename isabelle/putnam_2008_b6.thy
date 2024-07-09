theory putnam_2008_b6 imports Complex_Main
"HOL-Combinatorics.Permutations"
"HOL-Number_Theory.Cong"
begin

(* uses (nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> Fin n) *)
definition klimited :: "nat \<Rightarrow> nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> bool" where "klimited \<equiv> (\<lambda>(k::nat)(n::nat)(s::nat\<Rightarrow>nat). s permutes {0..(n-1)} \<and> (\<forall>i::nat\<in>{0..(n-1)}. \<bar>s i - i\<bar> \<le> k))"
theorem putnam_2008_b6:
  fixes n k :: nat
  assumes hnk: "n > 0 \<and> k > 0"
  shows "odd (card {s::nat\<Rightarrow>nat. klimited k n s}) \<longleftrightarrow> ([n = 0] (mod 2*k+1) \<or> [n = 1] (mod 2*k+1))"
  sorry

end
