theory putnam_1962_a4 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1962_a4:
  fixes f :: "real \<Rightarrow> real"
    and a b :: "real"
  assumes hdiff : "(f C1_differentiable_on UNIV) \<and> ((deriv f) differentiable_on UNIV)"
    and hfabs : "\<forall> x \<in> {a..b}. abs (f x) \<le> 1"
    and hfppabs : "\<forall> x \<in> {a..b}. abs (deriv (deriv f) x) \<le> 1"
    and hlen : "b - a \<ge> 2"
  shows "\<forall> x \<in> {a..b}. abs (deriv f x) \<le> 2"
  sorry

end