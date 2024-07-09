theory putnam_2009_b5 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* uses (real \<Rightarrow> real) instead of ({1<..} \<Rightarrow> real) *)
theorem putnam_2009_b5:
  fixes f :: "real \<Rightarrow> real"
  assumes hfdiff: "f differentiable_on {1<..}"
  and f: "\<forall>x::real>1. deriv f x = (x^2 - (f x)^2) / (x^2 * ((f x)^2 + 1))"
  shows "filterlim f at_top at_top"
  sorry

end
