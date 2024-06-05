theory putnam_1986_b4 imports Complex_Main
begin

definition putnam_1986_b4_solution::bool where "putnam_1986_b4_solution \<equiv> undefined"
(* True *)
theorem putnam_1986_b4:
  fixes G::"real\<Rightarrow>real"
  defines "G \<equiv> \<lambda>r. (LEAST y. \<exists> m n::int. y = \<bar>r - sqrt (m^2 + 2*n^2)\<bar>)"
  shows "(G \<longlonglongrightarrow> 0) \<longleftrightarrow> putnam_1986_b4_solution"
  sorry

end
