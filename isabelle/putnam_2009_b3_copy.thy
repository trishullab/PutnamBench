theory putnam_2009_b3 imports Complex_Main
begin

theorem putnam_2009_b3:
  fixes mediocre :: "nat \<Rightarrow> nat set \<Rightarrow> bool"
  and A :: "nat \<Rightarrow> int"
  defines "mediocre \<equiv> (\<lambda>(n::nat)(S::nat set). S \<subseteq> {1..n} \<and> (\<forall>a\<in>S. \<forall>b\<in>S. 2 dvd (a + b) \<longrightarrow> (nat (round ((a + b)/2))) \<in> S))"
  and "A \<equiv> (\<lambda>n::nat. card {S::nat set. mediocre n S})"
  shows "{n::nat. n > 0 \<and> A (n+2) - 2*A (n+1) + A n = 1} = ( {n::nat. (\<exists>k::nat\<ge>1. n = 2^k - 1)} )"
  sorry

end
