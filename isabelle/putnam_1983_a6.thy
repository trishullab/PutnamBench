theory putnam_1983_a6 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"

begin

definition putnam_1983_a6_solution :: "real" where
"putnam_1983_a6_solution \<equiv> undefined"
(* 2/9 *)
theorem putnam_1983_a6:
  fixes F :: "real \<Rightarrow> real"
  defines "F \<equiv> \<lambda> a. (a^4 / exp (a^3)) * (set_lebesgue_integral lebesgue {(x :: real, y :: real). 0 \<le> x \<and> x \<le> a \<and> 0 \<le> y \<and> y \<le> a - x} (\<lambda> (x,y). exp (x^3 + y^3)))"
  shows "filterlim F (nhds putnam_1983_a6_solution) at_top"
  sorry

end