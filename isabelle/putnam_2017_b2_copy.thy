theory putnam_2017_b2 imports
Complex_Main
begin

theorem putnam_2017_b2:
  fixes S :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  and p :: "nat \<Rightarrow> nat \<Rightarrow> bool"
  and q :: "nat \<Rightarrow> bool"
  defines "S \<equiv> \<lambda> a k. \<Sum> i \<in> {0 .. k - 1}. a + i"
  and "p \<equiv> \<lambda> N k. \<exists> a > 0. S a k = N"
  and "q \<equiv> \<lambda> N. p N 2017 \<and> (\<forall> k > 1. k \<noteq> 2017 \<longrightarrow> \<not>p N k)"
  shows "(LEAST a. a > 0 \<and> q (S a 2017)) = ( 16 )"
  sorry

end