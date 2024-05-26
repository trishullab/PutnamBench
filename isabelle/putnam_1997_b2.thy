theory putnam_1997_b2 imports Complex_Main
"HOL-Analysis.Derivative"

begin

theorem putnam_1997_b2:
  fixes f g :: "real \<Rightarrow> real"
  assumes hg : "\<forall> x :: real. g x \<ge> 0"
    and hfdiff : "(f differentiable_on UNIV) \<and> (deriv f) differentiable_on UNIV"
    and hfg : "\<forall> x :: real. f x + (deriv^^2) f x = -x * g x * (deriv f x)"
  shows "bounded (image f UNIV)"
  sorry

end
