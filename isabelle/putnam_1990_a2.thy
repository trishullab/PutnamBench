theory putnam_1990_a2 imports Complex_Main
begin

definition putnam_1990_a2_solution::bool where "putnam_1990_a2_solution \<equiv> undefined"
(* True *)
theorem putnam_1990_a2:
  fixes numform::"real\<Rightarrow>bool"
  defines "numform \<equiv> \<lambda>x. (\<exists>n m::nat. x = n powr (1/3) - m powr (1/3))"
  shows "(\<exists>s::nat\<Rightarrow>real. (\<forall>i::nat. numform (s i)) \<and> (s \<longlonglongrightarrow> (sqrt 2))) \<longleftrightarrow> putnam_1990_a2_solution"
  sorry

end