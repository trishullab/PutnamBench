theory putnam_2017_a1 imports Complex_Main
begin

theorem putnam_2017_a1:
  shows "( { x::int . x > 0 \<and> (x = 1 \<or> 5 dvd x) } ) = (LEAST S. 
    2 \<in> S
    \<and> (\<forall>n. n^2 \<in> S \<longrightarrow> n \<in> S)
    \<and> (\<forall>n. n \<in> S \<longrightarrow> (n+5)^2 \<in> S)
    \<and> (\<forall>n \<in> S. n > 0))"
  sorry

end
