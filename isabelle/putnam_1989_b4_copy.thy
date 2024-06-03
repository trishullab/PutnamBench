theory putnam_1989_b4 imports
Complex_Main
"HOL-Library.Countable_Set"
begin

theorem putnam_1989_b4:
  shows "(\<exists> C :: nat set set. uncountable C \<and> (\<forall> R \<in> C. R \<noteq> {}) \<and> (\<forall> A \<in> C. \<forall> B \<in> C. A \<noteq> B \<longrightarrow> finite (A \<inter> B))) \<longleftrightarrow> ( True )"
  sorry

end