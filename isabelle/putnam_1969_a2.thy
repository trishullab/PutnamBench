theory putnam_1969_a2 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

(* uses (nat \<Rightarrow> nat \<Rightarrow> real) instead of (Fin n \<Rightarrow> Fin n \<Rightarrow> real) and (nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> Fin n) *)
theorem putnam_1969_a2:
  fixes D :: "nat \<Rightarrow> nat \<Rightarrow> real"
  and ndet :: "(nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> nat \<Rightarrow> real"
  defines "D \<equiv> (\<lambda>i j::nat. \<bar>i - j\<bar>)"
  and "ndet \<equiv> (\<lambda>(A::nat\<Rightarrow>nat\<Rightarrow>real)(n::nat). (\<Sum>p\<in>{p'::nat\<Rightarrow>nat. p' permutes {0..(n-1)} \<and> (\<forall>i::nat\<ge>n. p' i = i)}. (sign p * (\<Prod>i::nat=0..(n-1). A i (p i)))))"
  shows "\<forall>n::nat. (n > 0 \<longrightarrow> ndet D n = (-1)^(n-1) * (n-1) * 2^(n-2))"
  sorry

end
