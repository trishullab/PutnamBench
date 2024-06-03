theory putnam_2021_b2 imports Complex_Main
begin

theorem putnam_2021_b2:
  fixes S :: "(nat \<Rightarrow> real) \<Rightarrow> real"
  and asum :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  assumes hS: "\<forall>a::nat\<Rightarrow>real. S a = (\<Sum>n::nat. ((n+1)/2^(n+1)) * (\<Prod>k::nat=0..n. a k) powr (1/(n+1)))"
  and hasum: "\<forall>a::nat\<Rightarrow>real. asum a = (\<forall>k::nat. a k \<ge> 0) \<and> (\<Sum>k::nat. a k) = 1"
  shows "(GREATEST Sa::real. (\<exists>a::nat\<Rightarrow>real. asum a \<and> S a = Sa)) = ( 2/3 )"
  sorry

end
