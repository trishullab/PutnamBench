theory putnam_1964_a4 imports Complex_Main
begin

theorem putnam_1964_a4:
  fixes u :: "nat \<Rightarrow> int"
  assumes boundedu: "\<exists>B T::int. \<forall>n::nat. B \<le> u n \<and> u n \<le> T"
  and hu: "\<forall>n::nat\<ge>4. u n = (u (n-1) + u (n-2) + u (n-3) * u (n-4)) / (u (n-1) * u (n-2) + u (n-3) + u (n-4)) \<and> u (n-1) * u (n-2) + u (n-3) + u (n-4) \<noteq> 0"
  shows "\<exists>N c::nat. c > 0 \<and> (\<forall>n::nat\<ge>N. u (n + c) = u n)"
  sorry

end
