theory putnam_1976_a6 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1976_a6:
  fixes f :: "real \<Rightarrow> real"
  assumes hfcdiff1 : "f C1_differentiable_on UNIV"
    and hfcdiff2 : "(deriv f) C1_differentiable_on UNIV"
    and hfbd : "\<forall> x :: real. \<bar>f x\<bar> \<le> 1"
    and hf0 : "(f 0)^2 + (deriv f 0)^2 = 4"
  shows "\<exists> y :: real. f y + ((deriv^^2) f) y = 0"
  sorry

end