theory putnam_1986_b1 imports Complex_Main
begin

definition putnam_1986_b1_solution :: "real" where "putnam_1986_b1_solution \<equiv> undefined"
(* 2 / 5 *)
theorem putnam_1986_b1:
  fixes b h :: "real"
  assumes hbh : "b > 0 \<and> h > 0 \<and> b^2 + h^2 = 2^2"
    and areaeq : "b*h = 0.5 * b * (1 - h/2)"
  shows "h = putnam_1986_b1_solution"
  sorry

end