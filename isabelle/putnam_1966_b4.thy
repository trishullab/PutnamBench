theory putnam_1966_b4 imports
Complex_Main
begin

theorem putnam_1966_b4:
  fixes m n :: nat
  and a :: "nat set"
  assumes ha: "(\<forall> i \<in> a. i > 0) \<and> card a = m * n + 1"
  shows "\<exists> b \<subseteq> a. (card b = m + 1 \<and> (\<forall> j \<in> b. \<forall> i \<in> b. i \<noteq> j \<longrightarrow> \<not>(j dvd i)) \<or>
          (card b = n + 1 \<and> (\<forall> j \<in> b. \<forall> i \<in> b. j < i \<longrightarrow> j dvd i)))"
  sorry

end