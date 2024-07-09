theory putnam_2005_b2 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> nat) *)
definition putnam_2005_b2_solution :: "(nat \<times> (nat \<Rightarrow> nat)) set" where "putnam_2005_b2_solution \<equiv> undefined"
(* {(n::nat,k::nat\<Rightarrow>nat). (n = 1 \<and> k 0 = 1) \<or> (n = 3 \<and> k ` {0,1,2} = {2,3,6}) \<or> (n = 4 \<and> (\<forall>i::nat\<in>{0..3}. k i = 4))} *)
theorem putnam_2005_b2:
  fixes n :: nat
  and k :: "nat \<Rightarrow> nat"
  and nkpos :: bool
  and nkeq1 :: bool
  and nkeq2 :: bool
  assumes "nkpos \<equiv> (n > 0 \<and> (\<forall>i::nat\<in>{0..(n-1)}. k i > 0))"
  and "nkeq1 \<equiv> ((\<Sum>i::nat=0..(n-1). k i) = 5*n - 4)"
  and "nkeq2 \<equiv> ((\<Sum>i::nat=0..(n-1). (1 / k i)) = 1)"
  shows "(nkpos \<and> nkeq1 \<and> nkeq2) \<longleftrightarrow> (n, k) \<in> putnam_2005_b2_solution"
  sorry

end
