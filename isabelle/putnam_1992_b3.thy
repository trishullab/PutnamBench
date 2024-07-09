theory putnam_1992_b3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_1992_b3_solution :: "real" where "putnam_1992_b3_solution \<equiv> undefined"
(* 4 + pi *)
theorem putnam_1992_b3:
  fixes a :: "(real^2) \<Rightarrow> (nat \<Rightarrow> real)"
  assumes ha : "\<forall> p :: real^2. a p 0 = p$1 \<and> (\<forall> n :: nat. a p (n + 1) = ((a p n)^2 + (p$2)^2) / 2)"
  shows "measure lebesgue {p :: real^2. \<exists> L :: real. filterlim (a p) (nhds L) at_top} = putnam_1992_b3_solution"     
  sorry

end