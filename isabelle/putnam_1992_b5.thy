theory putnam_1992_b5 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

(* uses (nat \<Rightarrow> nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> Fin n \<Rightarrow> nat) and (nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> Fin n) *)
definition putnam_1992_b5_solution :: bool where "putnam_1992_b5_solution \<equiv> undefined"
(* False *)
theorem putnam_1992_b5:
  fixes ndet :: "(nat \<Rightarrow> nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> int"
  and D :: "nat \<Rightarrow> int"
  defines "ndet \<equiv> (\<lambda>(A::nat\<Rightarrow>nat\<Rightarrow>nat)(n::nat). (\<Sum>p\<in>{p'::nat\<Rightarrow>nat. p' permutes {0..(n-1)} \<and> (\<forall>i::nat\<ge>n. p' i = i)}. (sign p * (\<Prod>i::nat=0..(n-1). A i (p i)))))"
  and "D \<equiv> (\<lambda>n::nat. ndet (\<lambda>i j::nat. if i = j then (i+3) else 1) (n - 1))"
  shows "(\<exists>r::rat. \<forall>x\<in>{x'::rat. (\<exists>n::nat\<ge>2. (D n / fact n) = x')}. \<bar>x\<bar> \<le> r) \<longleftrightarrow> putnam_1992_b5_solution"
  sorry

end
