theory putnam_1996_a3 imports Complex_Main

begin

theorem putnam_1996_a3:
  fixes student_choices :: "nat \<Rightarrow> (nat set)"
  assumes hinrange : "\<forall> n :: nat. student_choices n \<subseteq> {1..6}"
  shows "( False ) \<longleftrightarrow> (\<exists> S :: nat set. S \<subseteq> {1::nat..20} \<and> card S = 5 \<and> (\<exists> c1 \<in> {1 :: nat..6}. \<exists> c2 \<in> {1 :: nat..6}. c1 \<noteq> c2 \<and> ({c1, c2} \<subseteq> (\<Inter> s \<in> S. student_choices s) \<or> {c1, c2} \<subseteq> (\<Inter> s \<in> S. UNIV - (student_choices s))) ))"
  sorry

end