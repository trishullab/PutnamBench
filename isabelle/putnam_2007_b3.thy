theory putnam_2007_b3 imports
Complex_Main
begin

definition putnam_2007_b3_solution :: real where "putnam_2007_b3_solution \<equiv> undefined"
(* (2 ^ 2006 / sqrt 5) * ((((1 + sqrt 5) / 2) powr 4017) + (((1 + sqrt 5) / 2) powr -4017)) *)
theorem putnam_2007_b3:
  fixes x :: "nat \<Rightarrow> real"
  assumes hx0: "x 0 = 1"
  and hx: "\<forall> n :: nat. x (n + 1) = 3 * (x n) + floor (x n + sqrt 5)"
  shows "x 2007 = putnam_2007_b3_solution" 
  sorry

end