theory putnam_2006_a1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2006_a1_solution :: "real" where
"putnam_2006_a1_solution \<equiv> undefined"
(* 6 * pi^2 *)
theorem putnam_2006_a1:
  shows "emeasure lebesgue {p :: real \<times> real \<times> real. let (x,y,z) = p in (x^2 + y^2 + z^2 + 8)^2 \<le> 36 * (x^2 + y^2)} = putnam_2006_a1_solution"
  sorry

end