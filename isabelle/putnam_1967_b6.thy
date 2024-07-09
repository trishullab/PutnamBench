theory putnam_1967_b6 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1967_b6:
  fixes f :: "real \<Rightarrow> real \<Rightarrow> real"
  assumes fdiff : "(\<forall> y :: real. (\<lambda> x :: real. f x y) differentiable_on UNIV) \<and> (\<forall> x :: real. (\<lambda> y :: real. f x y) differentiable_on UNIV)"
    and fbound : "\<forall> x y :: real. (x^2 + y^2 \<le> 1) \<longrightarrow> \<bar>f x y\<bar> \<le> 1"
  shows "\<exists> x0 y0 :: real. (x0^2 + y0^2 < 1) \<and> ((deriv (\<lambda> x :: real. f x y0) x0)^2 + (deriv (\<lambda> y :: real. f x0 y) y0)^2 \<le> 16)" 
  sorry

end