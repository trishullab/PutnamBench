theory putnam_2006_b5 imports
Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2006_b5_solution :: real where "putnam_2006_b5_solution \<equiv> undefined"
(* 1 / 16 *)
theorem putnam_2006_b5:
  fixes I :: "(real \<Rightarrow> real) \<Rightarrow> real"
  and J :: "(real \<Rightarrow> real) \<Rightarrow> real"
  defines "I \<equiv> \<lambda> f. set_lebesgue_integral lebesgue {0..1} (\<lambda> x. x ^ 2 * (f x))"
  and "J \<equiv> \<lambda> f. set_lebesgue_integral lebesgue {0..1} (\<lambda> x. x * (f x) ^ 2)"
  shows "(GREATEST y. \<exists> f. continuous_on {0..1} f \<and> I f - J f = y) = putnam_2006_b5_solution"
  sorry

end