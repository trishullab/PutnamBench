theory putnam_2014_b1 imports Complex_Main
begin

theorem putnam_2014_b1:
  fixes overexpansion :: "nat \<Rightarrow> (nat list) \<Rightarrow> bool"
  and S :: "nat set"
  defines "overexpansion \<equiv> (\<lambda>(N::nat)(d::nat list). N = (\<Sum>i::nat=0..((length d)-1). (d!i)*10^i) \<and> last d \<noteq> 0 \<and> (\<forall>i::nat\<in>{0..((length d)-1)}. d!i \<in> {0..10}))"
  assumes hS: "\<forall>N::nat. (N \<in> S \<longleftrightarrow> (N > 0 \<and> (\<exists>!d::nat list. overexpansion N d)))"
  shows "S = ( {n::nat. n > 0 \<and> (\<forall>d::nat. (\<lfloor>n / 10^d\<rfloor> > 0) \<longrightarrow> (\<lfloor>n / 10^d\<rfloor> mod 10 \<noteq> 0))} )"
  sorry

end
