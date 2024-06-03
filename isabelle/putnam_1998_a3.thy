theory putnam_1998_a3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1998_a3:
  fixes f :: "real \<Rightarrow> real"
  assumes hf : "continuous_on UNIV ((deriv^^3) f)"
  shows "\<exists> a :: real. f a * deriv f a * (deriv^^2) f a * (deriv^^3) f a \<ge> 0"
  sorry

end
