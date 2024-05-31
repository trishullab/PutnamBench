theory putnam_1997_b1 imports Complex_Main

begin

definition putnam_1997_b1_solution :: "nat \<Rightarrow> real" where
"putnam_1997_b1_solution \<equiv> undefined"
(* \<lambda> n. n *)
definition dist_to_int :: "real \<Rightarrow> real" where "dist_to_int r = \<bar>r - round r\<bar>"
theorem putnam_1997_b1:
  fixes F :: "nat \<Rightarrow> real"
  defines "F \<equiv> \<lambda> n. (\<Sum> m \<in> {1..6*n-1}. min (dist_to_int (m/(6*n))) (dist_to_int (m/(3*n))))"
  shows "\<forall> n :: nat > 0. F n = putnam_1997_b1_solution n"
  sorry

end