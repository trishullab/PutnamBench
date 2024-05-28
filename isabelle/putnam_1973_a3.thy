theory putnam_1973_a3 imports Complex_Main
begin

theorem putnam_1973_a3:
  fixes b :: "nat \<Rightarrow> real"
  defines "b \<equiv> (\<lambda>n::nat. (LEAST knk::real. (\<exists>k::nat>0. knk = k + n/k)))"
  shows "\<forall>n::nat. (n > 0 \<longrightarrow> \<lfloor>b n\<rfloor> = \<lfloor>sqrt (4*n + 1)\<rfloor>)"
  sorry

end
