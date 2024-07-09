theory putnam_2016_b1 imports
Complex_Main
begin

definition putnam_2016_b1_solution :: real where "putnam_2016_b1_solution \<equiv> undefined"
(* exp 1 - 1 *)
theorem putnam_2016_b1:
  fixes x :: "nat \<Rightarrow> real"
  assumes hx0: "x 0 = 1"
  and hxn: "\<forall> n :: nat. x (n + 1) = ln (exp (x n) - x n)"
  shows "(\<Sum> n :: nat. x n) = putnam_2016_b1_solution"
  sorry

end