theory putnam_1980_b3 imports
Complex_Main
begin

definition putnam_1980_b3_solution :: "real set" where "putnam_1980_b3_solution \<equiv> undefined"
(* {a :: real. a \<ge> 3} *)
theorem putnam_1980_a3:
  fixes a :: real
  and u :: "nat \<Rightarrow> real"
  assumes hu: "u 0 = a \<and> (\<forall> n :: nat. u (n + 1) = 2 * (u n) - n ^ 2)"
  shows "(\<forall> n :: nat. u n > 0) \<longleftrightarrow> a \<in> putnam_1980_b3_solution"
  sorry

end