theory putnam_2003_a1 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of (Fin k \<Rightarrow> int) *)
definition putnam_2003_a1_solution :: "nat \<Rightarrow> nat" where "putnam_2003_a1_solution \<equiv> undefined"
(* (\<lambda>n::nat. n) *)
theorem putnam_2003_a1:
  fixes n :: nat
  assumes hn: "n > 0"
  shows "card {a::nat\<Rightarrow>int. (\<exists>k::nat>0. (\<Sum>i::nat=0..(k-1). a i) = n \<and> (\<forall>i::nat\<in>{0..(k-1)}. a i > 0) \<and> (\<forall>i::nat\<in>{0..(k-2)}. a i \<le> a (i+1)) \<and> a (k-1) \<le> a 0 + 1 \<and> (\<forall>i::nat\<ge>k. a i = 0))} = putnam_2003_a1_solution n"
  sorry

end
