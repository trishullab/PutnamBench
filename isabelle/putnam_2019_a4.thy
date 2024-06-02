theory putnam_2019_a4 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2019_a4_solution :: bool where "putnam_2019_a4_solution \<equiv> undefined"
(* False *)
theorem putnam_2019_a4:
  fixes fint :: "((real^3) \<Rightarrow> real) \<Rightarrow> bool"
  assumes hfint: "\<forall>f::(real^3)\<Rightarrow>real. fint f = (\<forall>S::real^3. set_lebesgue_integral lebesgue (sphere S 1) f = 0)"
  shows "(\<forall>f::(real^3)\<Rightarrow>real. (continuous_on UNIV f \<and> fint f) \<longrightarrow> (\<forall>x::real^3. f x = 0)) \<longleftrightarrow> putnam_2019_a4_solution"
  sorry

end
