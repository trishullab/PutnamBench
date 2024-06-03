theory putnam_2019_a4 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2019_a4:
  fixes fint :: "((real^3) \<Rightarrow> real) \<Rightarrow> bool"
  assumes hfint: "\<forall>f::(real^3)\<Rightarrow>real. fint f = (\<forall>S::real^3. set_lebesgue_integral lebesgue (sphere S 1) f = 0)"
  shows "(\<forall>f::(real^3)\<Rightarrow>real. (continuous_on UNIV f \<and> fint f) \<longrightarrow> (\<forall>x::real^3. f x = 0)) \<longleftrightarrow> ( False )"
  sorry

end
