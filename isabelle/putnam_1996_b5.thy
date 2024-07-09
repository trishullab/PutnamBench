theory putnam_1996_b5 imports
Complex_Main
begin

definition putnam_1996_b5_solution :: "nat \<Rightarrow> nat" where "putnam_1996_b5_solution \<equiv> undefined"
(* \<lambda> n :: nat. 2 ^ ((n + 2) div 2) + 2 ^ ((n + 1) div 2) - 2 *)
theorem putnam_1996_b5:
  fixes n :: nat
  and STdelta :: "(nat \<Rightarrow> bool) \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> int"
  and Sbalanced :: "(nat \<Rightarrow> bool) \<Rightarrow> bool"
  defines "STdelta \<equiv> \<lambda> S :: nat \<Rightarrow> bool. \<lambda> T1 T2 :: nat. \<Sum> i = T1 .. T2. if S i then 1 else -1"
  and "Sbalanced \<equiv> \<lambda> (S :: nat \<Rightarrow> bool). \<forall> T1 \<in> {0 .. n - 1}. \<forall> T2 \<in> {0 .. n - 1}. T1 \<le> T2 \<longrightarrow> (-2 \<le> STdelta S T1 T2 \<and> STdelta S T1 T2 \<le> 2)"
  shows "card {S :: nat \<Rightarrow> bool. Sbalanced S \<and> (\<forall> i \<ge> n. S i = False)} = putnam_1996_b5_solution n"
  sorry

end