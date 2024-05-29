theory putnam_1982_b5 imports Complex_Main
begin

theorem putnam_1982_b5:
  fixes T::"real set" and S::"real\<Rightarrow>nat\<Rightarrow>real" and g::"real \<Rightarrow> real"
  defines "T \<equiv> {(exp (exp 1))<..}"
  assumes hS : "\<forall>x \<in> T. S x 0 = exp 1 \<and> (\<forall>n::nat. S x (n+1) = log (S x n) x)"
  shows "\<forall>x \<in> T. (\<exists>L::real. (S x \<longlonglongrightarrow> L)) \<and> (\<forall>x \<in> T. (S x \<longlonglongrightarrow> g x)) \<longrightarrow> continuous_on T g"
  sorry

end