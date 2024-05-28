theory putnam_1971_a6 imports Complex_Main
begin

theorem putnam_1971_a6:
  fixes c :: real
  assumes hc: "\<forall>n::nat. (n > 0 \<longrightarrow> (\<exists>m::int. n powr c = m))"
  shows "\<exists>m::nat. c = m"
  sorry

end
