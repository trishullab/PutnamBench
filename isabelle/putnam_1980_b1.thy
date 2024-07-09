theory putnam_1980_b1 imports
Complex_Main
begin

definition putnam_1980_b1_solution :: "real set" where "putnam_1980_b1_solution \<equiv> undefined"
(* {c :: real. c \<ge> 1 / 2} *)
theorem putnam_1980_b1:
  fixes c :: real
  shows "(\<forall> x :: real. (exp x + exp (-x)) / 2 \<le> exp (c * x ^ 2)) \<longleftrightarrow> c \<in> putnam_1980_b1_solution"
  sorry

end