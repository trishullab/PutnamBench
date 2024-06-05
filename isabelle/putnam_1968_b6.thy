theory putnam_1968_b6 imports
Complex_Main
begin

theorem putnam_1968_b6:
  fixes compactQ :: "real set \<Rightarrow> bool"
  defines "compactQ \<equiv> \<lambda> S. compact S \<and> (\<forall> r \<in> S. \<exists> q :: rat. q = r)"
  shows "\<not>(\<exists> K :: nat \<Rightarrow> real set. (\<forall> n :: nat. compactQ (K n)) \<and> (\<forall> S :: real set. compactQ S \<longrightarrow> (\<exists> n :: nat. S \<subseteq> K n)))"
  sorry

end