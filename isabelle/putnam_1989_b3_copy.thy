theory putnam_1989_b3 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1989_b3:
  fixes f :: "real \<Rightarrow> real"
  and \<mu> :: "nat \<Rightarrow> real"
  defines "\<mu> \<equiv> \<lambda> n. interval_lebesgue_integral lebesgue 0 \<infinity> (\<lambda> x. x ^ n * f x)"
  assumes hfdiff: "f differentiable_on {0..}"
  and hfderiv: "\<forall> x > 0. deriv f x = -3 * f x + 6 * f (2 * x)"
  and hdecay: "\<forall> x \<ge> 0. \<bar>f x\<bar> \<le> exp (-sqrt x)"
  shows "(\<forall> n :: nat. \<mu> n = ( \<lambda> n c. c * fact n / (3 ^ n * (\<Prod> m = 1..n. 1 - 2 powi (-m))) ) n (\<mu> 0)) \<and> convergent (\<lambda> n :: nat. \<mu> n * 3 ^ n / fact n) \<and> (((\<lambda> n :: nat. \<mu> n * 3 ^ n / fact n) \<longlonglongrightarrow> 0) \<longrightarrow> (\<mu> 0 = 0))"
  sorry

end