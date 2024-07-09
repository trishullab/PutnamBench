theory putnam_1966_b4 imports
Complex_Main
begin

theorem putnam_1966_b4:
  fixes m n :: nat
    and S :: "nat set"
  assumes hScard : "card S = m * n + 1"
    and hSpos : "\<forall> i \<in> S. i > 0"
  shows "\<exists> T \<subseteq> S. (card T = m + 1 \<and> (\<forall> j \<in> T. \<forall> i \<in> T. i \<noteq> j \<longrightarrow> \<not>(j dvd i)) \<or>
          (card T = n + 1 \<and> (\<forall> j \<in> T. \<forall> i \<in> T. j < i \<longrightarrow> j dvd i)))"
  sorry

end