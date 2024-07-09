theory putnam_1979_b2 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1979_b2_solution :: "real \<Rightarrow> real \<Rightarrow> real" where "putnam_1979_b2_solution \<equiv> undefined" 
(* \<lambda> a b. exp (-1) * (b powr b / a powr a) powr (1 / (b - a)) *)
theorem putnam_1979_b2:
  shows "\<forall> a b :: real. 0 < a \<and> a < b \<longrightarrow> ((\<lambda> t :: real. (interval_lebesgue_integral lebesgue 0 1 (\<lambda> x. (b * x + a * (1 - x)) powr t)) powr (1 / t)) \<longlongrightarrow> putnam_1979_b2_solution a b) (at 0)"
  sorry

end