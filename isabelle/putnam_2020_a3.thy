theory putnam_2020_a3 imports Complex_Main
begin

definition putnam_2020_a3_solution :: bool where "putnam_2020_a3_solution \<equiv> undefined"
(* False *)
theorem putnam_2020_a3:
  fixes a :: "nat \<Rightarrow> real"
  assumes ha0: "a 0 = pi/2"
  and ha: "\<forall>n::nat\<ge>1. a n = sin (a (n-1))"
  shows "(\<exists>L::real. filterlim (\<lambda>m::nat. (\<Sum>n::nat=1..m. (a n)^2)) (nhds L) at_top) \<longleftrightarrow> putnam_2020_a3_solution"
  sorry

end
