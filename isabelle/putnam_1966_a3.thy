theory putnam_1966_a3 imports
Complex_Main
begin

theorem putnam_1966_a3:
  fixes x :: "nat \<Rightarrow> real"
  assumes hx1: "0 < x 1 \<and> x 1 < 1"
  and hxi: "\<forall> n \<ge> 1. x (n + 1) = x n * (1 - x n)"
  shows "(\<lambda> n. n * x n) \<longlonglongrightarrow> 1"
  sorry

end