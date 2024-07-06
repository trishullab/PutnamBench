theory putnam_1988_a1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_1988_a1_solution :: "real" where "putnam_1988_a1_solution \<equiv> undefined"
(* 6 *)
theorem putnam_1988_a1:
  fixes R :: "(real^2) set"
  defines "R \<equiv> {p :: real^2. abs (p$1) - abs (p$2) \<le> 1 \<and> abs (p$2) \<le> 1}"
  shows "measure lebesgue R = putnam_1988_a1_solution"
  sorry

end