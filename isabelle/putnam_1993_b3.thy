theory putnam_1993_b3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_1993_b3_solution :: "rat \<times> rat" where "putnam_1993_b3_solution \<equiv> undefined"
(* (5/4, -1/4) *)
theorem putnam_1993_b3:
  fixes S :: "(real^2) set"
  defines "S \<equiv> {p :: real^2. (\<forall> i :: 2. 0 < p$i \<and> p$i < 1) \<and> even (round (p$1 / p$2))}"
  shows "let (r, s) = putnam_1993_b3_solution in (measure lebesgue S) / 1 = real_of_rat r + real_of_rat s * pi"
  sorry

end