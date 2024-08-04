theory putnam_1996_a3 imports Complex_Main

begin

definition putnam_1996_a3_solution :: "bool" where
"putnam_1996_a3_solution \<equiv> undefined"
(* False *)
theorem putnam_1996_a3:
  fixes studentchoicesinrange :: "(nat \<Rightarrow> (nat set)) \<Rightarrow> bool"
  and studentchoicesprop :: "(nat \<Rightarrow> (nat set)) \<Rightarrow> bool"
  defines "studentchoicesinrange \<equiv> (\<lambda>studentchoices::nat\<Rightarrow>(nat set). (\<forall>n::nat. studentchoices n \<subseteq> {1..6}))"
  and "studentchoicesprop \<equiv> (\<lambda>studentchoices::nat\<Rightarrow>(nat set). (\<exists> S :: nat set. S \<subseteq> {1::nat..20} \<and> card S = 5 \<and> (\<exists> c1 \<in> {1 :: nat..6}. \<exists> c2 \<in> {1 :: nat..6}. c1 \<noteq> c2 \<and> ({c1, c2} \<subseteq> (\<Inter> s \<in> S. studentchoices s) \<or> {c1, c2} \<subseteq> (\<Inter> s \<in> S. (UNIV - studentchoices s))))))"
  shows "(\<forall>studentchoices::nat\<Rightarrow>(nat set). studentchoicesinrange studentchoices \<longrightarrow> studentchoicesprop studentchoices) \<longleftrightarrow> putnam_1996_a3_solution"
  sorry

end