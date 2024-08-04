theory putnam_2017_a1 imports Complex_Main
begin

definition putnam_2017_a1_solution::"int set" where "putnam_2017_a1_solution \<equiv> undefined"
(* { x::int . x > 0 \<and> (x = 1 \<or> 5 dvd x) } *)
theorem putnam_2017_a1:
  fixes s::"int set"
  defines "s \<equiv> (LEAST S. 
    2 \<in> S
    \<and> (\<forall>n. n^2 \<in> S \<longrightarrow> n \<in> S)
    \<and> (\<forall>n. n \<in> S \<longrightarrow> (n+5)^2 \<in> S)
    \<and> (\<forall>n \<in> S. n > 0))"
  shows "putnam_2017_a1_solution = { x :: int. x > 0 } - s"
  sorry

end