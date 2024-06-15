theory putnam_1963_b5 imports Complex_Main
begin

theorem putnam_1963_b5:
  fixes a::"int\<Rightarrow>real"
  assumes haineq : "\<forall>n \<ge> 1. \<forall>k::int. (n \<le> k \<and> k \<le> 2 * n) \<longrightarrow> (0 \<le> a k \<and> a k \<le> 100 * a n)"
    and haseries : "summable a"
  shows "(\<lambda>n. n * a n) \<longlonglongrightarrow> 0"
  sorry

end