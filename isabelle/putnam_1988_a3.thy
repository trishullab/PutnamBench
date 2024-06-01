theory putnam_1988_a3 imports
Complex_Main
begin

definition putnam_1988_a3_solution :: "real set" where "putnam_1988_a3_solution \<equiv> undefined"
(* {x :: real. x > 1 / 2} *)
theorem putnam_1988_a3:
  shows "{x :: real. convergent (\<lambda> t :: nat. (\<Sum> n = 1..t. (1 / n) / sin (1 / n) - 1) powr x)} = putnam_1988_a3_solution"
  sorry

end