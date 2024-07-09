theory putnam_2002_a5 imports
Complex_Main
begin

theorem putnam_2002_a5:
  fixes a :: "nat \<Rightarrow> rat"
  assumes ha: "a 0 = 1 \<and> (\<forall> n :: nat. a (2 * n + 1) = a n \<and> a (2 * n + 2) = a n + a (n + 1))"
  shows "\<forall> q :: rat. q > 0 \<longrightarrow> q \<in> {a (n - 1) / a n | n :: nat. n \<ge> 1}"
  sorry

end