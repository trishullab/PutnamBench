theory putnam_2004_a6 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_2004_a6:
  fixes f::"(real\<times>real)\<Rightarrow>real" and usquare::"(real\<times>real) set" and Fx Fy::"real\<Rightarrow>real\<Rightarrow>real"
  defines "usquare \<equiv> {(x, y). x \<ge> 0 \<and> y \<ge> 0 \<and> x \<le> 1 \<and> y \<le> 1}"
  assumes fcont : "continuous_on usquare f"
    and fxderiv : "\<forall>y::real \<in> {0<..<1}. \<forall>x::real \<in> {0<..<1}. ((Fx y) has_derivative (\<lambda>x. f (x, y))) (nhds x)"
    and fyderiv : "\<forall>x::real \<in> {0<..<1}. \<forall>y::real \<in> {0<..<1}. ((Fy x) has_derivative (\<lambda>y. f (x, y))) (nhds y)"
  shows "interval_lebesgue_integral lebesgue 0 1 (\<lambda>y. (Fx y 1 - Fx y 0)^2) + 
    interval_lebesgue_integral lebesgue 0 1 (\<lambda>x. (Fy x 1 - Fy x 0)^2) \<le> 
    (set_lebesgue_integral lebesgue usquare f)^2 + set_lebesgue_integral lebesgue usquare (\<lambda>(x, y). f (x, y)^2)"
  sorry

end
