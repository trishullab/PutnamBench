theory putnam_2006_a4 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

(* uses (nat \<Rightarrow> nat) instead of (Equiv.Perm (Fin n)) *)
definition putnam_2006_a4_solution :: "nat \<Rightarrow> real" where "putnam_2006_a4_solution \<equiv> undefined"
(* (\<lambda>n::nat. (n+1) / 3) *)
theorem putnam_2006_a4:
  fixes n :: nat
  and nperms :: "(nat \<Rightarrow> nat) set"
  and pcount :: "(nat \<Rightarrow> nat) \<Rightarrow> nat"
  assumes ngt1: "n > 1"
  and hnperms: "nperms \<equiv> {p::nat\<Rightarrow>nat. p permutes {0..(n-1)} \<and> (\<forall>i::nat\<ge>n. p i = i)}"
  and hpcount: "\<forall>p::nat\<Rightarrow>nat. pcount p = card {k::nat\<in>{0..(n-1)}. (k = 0 \<or> p (k-1) < p k) \<and> (k = n-1 \<or> p k > p (k+1))}"
  shows "(\<Sum>p\<in>nperms. pcount p) / card nperms = putnam_2006_a4_solution n"
  sorry

end
