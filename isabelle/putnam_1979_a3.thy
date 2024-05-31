theory putnam_1979_a3 imports
Complex_Main
begin

definition putnam_1979_a3_solution :: "(real \<times> real) \<Rightarrow> bool" where "putnam_1979_a3_solution \<equiv> undefined"
(* \<lambda> (a :: real, b :: real). \<exists> m :: int. a = m \<and> b = m *)
theorem putnam_1979_a3:
  fixes x :: "nat \<Rightarrow> real"
  assumes hx: "\<forall> n :: nat. x n \<noteq> 0 \<and> (n \<ge> 3 \<longrightarrow> x n = x (n - 2) * x (n - 1) / (2 * x (n - 2) - x (n - 1)))"
  shows "(\<forall> m :: nat. \<exists> n :: nat. n > m \<and> (\<exists> a :: int. a = x n)) \<longleftrightarrow> putnam_1979_a3_solution (x 1, x 2)" 
  sorry

end