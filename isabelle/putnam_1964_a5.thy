theory putnam_1964_a5 imports Complex_Main
begin

theorem putnam_1964_a5:
  fixes pa :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  defines "pa \<equiv> (\<lambda>a::nat\<Rightarrow>real. (\<forall>n::nat. a n > 0) \<and> summable (\<lambda>n::nat. 1 / a n))"
  shows "\<exists>k::real. \<forall>a::nat\<Rightarrow>real. (pa a \<longrightarrow> (\<Sum>n::nat. (n+1) / (\<Sum>i::nat=0..n. a i)) \<le> k * (\<Sum>n::nat. 1 / a n))"
  sorry

end
