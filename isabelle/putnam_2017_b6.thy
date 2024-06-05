theory putnam_2017_b6 imports Complex_Main
begin

definition putnam_2017_b6_solution::nat where "putnam_2017_b6_solution \<equiv> undefined"
(* 2016! / 1953! - 63! * 2016 *)
theorem putnam_2017_b6:
  fixes S::"(nat list) set"
  defines "S \<equiv> {x. (size x = 64)
                    \<and> (\<forall>i\<in>{0..63}. x!i \<ge> 1 \<and> x!i \<le> 2017)
                    \<and> (\<forall>i\<in>{0..63}. \<forall>j\<in>{0..63}. x!i = x!j \<longrightarrow> i = j)
                    \<and> (2017 dvd  (x!0 + (\<Sum>i=1..63. (i * x!i))))}"
  shows "card S = putnam_2017_b6_solution"
  sorry

end
