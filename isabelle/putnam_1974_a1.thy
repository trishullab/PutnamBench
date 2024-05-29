theory putnam_1974_a1 imports Complex_Main
begin

definition putnam_1974_a1_solution :: nat where "putnam_1974_a1_solution \<equiv> undefined"
(* 11 *)
theorem putnam_1974_a1:
  fixes conspiratorial :: "nat set \<Rightarrow> bool"
  defines "conspiratorial \<equiv> (\<lambda>S::nat set. (\<forall>a\<in>S. \<forall>b\<in>S. \<forall>c\<in>S. a \<noteq> 0 \<and> ((a \<noteq> b \<and> b \<noteq> c \<and> a \<noteq> c) \<longrightarrow> (gcd a b > 1 \<or> gcd b c > 1 \<or> gcd a c > 1))))"
  shows "(GREATEST Scard::nat. (\<exists>S::nat set. S \<subseteq> {1..16} \<and> conspiratorial S \<and> Scard = card S)) = putnam_1974_a1_solution"
  sorry

end
