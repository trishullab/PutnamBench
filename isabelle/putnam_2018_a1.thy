theory putnam_2018_a1 imports Complex_Main
begin

definition putnam_2018_a1_solution::"(nat \<times> nat) set" where "putnam_2018_a1_solution \<equiv> undefined"
(* {(673, 1358114), (674, 340033), (1009, 2018), (2018, 1009), (340033, 674), (1358114, 673)} *)
theorem putnam_2018_a1:
  shows "\<forall>a b::nat. (a > 0 \<and> b > 0 \<and> (1 / a + 1 / b = 3 / 2018)) \<longleftrightarrow> (a, b) \<in> putnam_2018_a1_solution"
  sorry

end
