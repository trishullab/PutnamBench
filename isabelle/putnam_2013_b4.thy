theory putnam_2013_b4 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

(* uses (real \<Rightarrow> real) instead of ({0..1} \<Rightarrow> real) *)
theorem putnam_2013_b4:
  fixes \<mu> :: "(real \<Rightarrow> real) \<Rightarrow> real"
  and Var :: "(real \<Rightarrow> real) \<Rightarrow> real"
  and M :: "(real \<Rightarrow> real) \<Rightarrow> real"
  assumes h\<mu>: "\<forall>f::real\<Rightarrow>real. \<mu> f = set_lebesgue_integral lebesgue {0<..<1} f"
  and hVar: "\<forall>f::real\<Rightarrow>real. Var f = set_lebesgue_integral lebesgue {0<..<1} (\<lambda>x::real. (f x - \<mu> f)^2)"
  and hM: "\<forall>f::real\<Rightarrow>real. M f = (GREATEST y::real. (\<exists>x::real\<in>{0..1}. y = \<bar>f x\<bar>))"
  shows "\<forall>f g::real\<Rightarrow>real. (continuous_on {0..1} f \<and> continuous_on {0..1} g) \<longrightarrow> (Var (\<lambda>x::real. f x*g x) \<le> 2*Var f*(M g)^2 + 2*Var g*(M f)^2)"
  sorry

end
