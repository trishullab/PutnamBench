theory putnam_2003_a6 imports Complex_Main
begin

definition putnam_2003_a6_solution::bool where "putnam_2003_a6_solution \<equiv> undefined"
(* True *)
theorem putnam_2003_a6:
  fixes r::"(nat set) \<Rightarrow> nat \<Rightarrow> nat"
  defines "r \<equiv> \<lambda>S. \<lambda>n. card {(s1, s2). s1 \<in> S \<and> s2 \<in> S \<and> s1 \<noteq> s2 \<and> s1 + s2 = n}"
  shows "(\<exists>A B::nat set. A \<union> B = \<nat> \<and> A \<inter> B = {} \<and> (\<forall>n::nat. r A n = r B n)) \<longleftrightarrow> putnam_2003_a6_solution"
  sorry

end