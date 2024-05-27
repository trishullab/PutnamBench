theory putnam_1982_a3 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Interval_Integral"

begin

definition putnam_1982_a3_solution :: "real" where
"putnam_1982_a3_solution \<equiv> undefined"
(* (pi / 2) * ln pi *)
theorem putnam_1982_a3:
  shows "filterlim (\<lambda> t :: real. (interval_lebesgue_integral lebesgue 0 t (\<lambda> x. (arctan (pi * x) - arctan x)/x))) (nhds putnam_1982_a3_solution) at_top"
  sorry

end