theory putnam_1966_a6 imports
Complex_Main
begin

theorem putnam_1966_a6:
  fixes a :: "nat \<Rightarrow> nat \<Rightarrow> real"
  assumes ha: "\<forall> n \<ge> 1. a n n = n \<and> (\<forall> m \<ge> 1. m < n \<longrightarrow> a n m = m * sqrt (1 + a n (m + 1)))"
  shows "(\<lambda> n. a n 1) \<longlonglongrightarrow> 3"
  sorry

end