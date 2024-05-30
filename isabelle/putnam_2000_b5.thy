theory putnam_2000_b5 imports Complex_Main
begin

theorem putnam_2000_b5:
  fixes S :: "nat \<Rightarrow> int set"
  assumes hSfin: "\<forall>n::nat. finite (S n)"
  and hSpos: "\<forall>n::nat. (\<forall>s\<in>(S n). s > 0)"
  and hSdef: "\<forall>n::nat. (\<forall>a::int. (a \<in> S (n + 1) \<longleftrightarrow> (((a - 1) \<in> S n) \<noteq> (a \<in> S n))))"
  shows "\<forall>n::nat. \<exists>N::nat\<ge>n. S N = S 0 \<union> {M::int. M - N \<in> S 0}"
  sorry

end
