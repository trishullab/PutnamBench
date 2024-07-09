theory putnam_2009_a3 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

definition putnam_2009_a3_solution :: real where "putnam_2009_a3_solution \<equiv> undefined"
(* 0 *)
theorem putnam_2009_a3:
  fixes cos_matrix :: "nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real)"
  and ndet :: "nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> real"
  assumes hM: "\<forall>n::nat. \<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. (cos_matrix n) i j = cos (1 + n * i + j)"
  defines "ndet \<equiv> (\<lambda>(n::nat)(A::nat\<Rightarrow>nat\<Rightarrow>real). (\<Sum>p\<in>{p'::nat\<Rightarrow>nat. p' permutes {0..(n-1)} \<and> (\<forall>i::nat\<ge>n. p' i = i)}. (sign p * (\<Prod>i::nat=0..(n-1). A i (p i)))))"
  shows "filterlim (\<lambda>n::nat. ndet n (cos_matrix n)) (nhds putnam_2009_a3_solution) at_top"
  sorry

end
