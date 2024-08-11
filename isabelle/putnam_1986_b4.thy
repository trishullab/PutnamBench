theory putnam_1986_b4 imports Complex_Main
begin

definition putnam_1986_b4_solution::bool where "putnam_1986_b4_solution \<equiv> undefined"
(* True *)
theorem putnam_1986_b4:
  fixes G::"real\<Rightarrow>real"
  defines "G \<equiv> \<lambda>r. (LEAST y. \<exists> m \<in> \<int>. \<exists> n \<in> \<int>. y = \<bar>r - sqrt (m^2 + 2*n^2)\<bar>)"
  shows "filterlim G (nhds 0) at_top \<longleftrightarrow> putnam_1986_b4_solution"
  sorry

end
