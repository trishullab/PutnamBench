theory putnam_2005_b2 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> nat) *)
definition putnam_2005_b2_solution :: "(nat \<times> (nat \<Rightarrow> int)) set" where "putnam_2005_b2_solution \<equiv> undefined"
(* {(n::nat,k::nat\<Rightarrow>int). (n = 1 \<and> k 0 = 1) \<or> (n = 3 \<and> k ` {0,1,2} = {2,3,6}) \<or> (n = 4 \<and> (\<forall>i::nat\<in>{0..3}. k i = 4))} *)
theorem putnam_2005_b2:
  shows "{(n::nat, k::nat\<Rightarrow>int). n > 0 \<and> (\<forall>i::nat\<in>{0..(n-1)}. k i > 0) \<and> ((\<Sum>i::nat=0..(n-1). k i) = 5*n - 4) \<and> ((\<Sum>i::nat=0..(n-1). (1 / k i)) = 1)} = putnam_2005_b2_solution"
  sorry

end
