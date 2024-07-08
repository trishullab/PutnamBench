theory putnam_1965_b1 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

(* Note: Uses infinite dimensional hypercube for integration, function operates on first n components in term n of the sequence  *)
definition putnam_1965_b1_solution :: "real" where
"putnam_1965_b1_solution \<equiv> undefined"
(* 1/(2 :: real) *)
theorem putnam_1965_b1: 
  shows "filterlim (\<lambda> n :: nat. set_lebesgue_integral lebesgue {x::real^'n. (\<forall>i. 0 \<le> x$i \<and> x$i \<le> 1)} (\<lambda> x :: real^'n. cos (pi/(2*(real (n+1))) * (\<Sum> k \<in> {0::nat..n}. x$i))^2)) (nhds putnam_1965_b1_solution) at_top"
  sorry

end