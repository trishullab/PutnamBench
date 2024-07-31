theory putnam_2004_a6 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_2004_a6:
  fixes f :: "(real\<times>real)\<Rightarrow>real" 
    and usquare :: "(real\<times>real) set" 
  defines "usquare \<equiv> {(x, y). x \<ge> 0 \<and> y \<ge> 0 \<and> x \<le> 1 \<and> y \<le> 1}"
  assumes fcont : "continuous_on usquare f"
  shows "interval_lebesgue_integral lebesgue 0 1 (\<lambda>y. (interval_lebesgue_integral lebesgue 0 1 (\<lambda>x. f (x, y)))^2) + 
    interval_lebesgue_integral lebesgue 0 1 (\<lambda>x. (interval_lebesgue_integral lebesgue 0 1 (\<lambda>y. f (x, y)))^2) \<le> 
    (set_lebesgue_integral lebesgue usquare f)^2 + set_lebesgue_integral lebesgue usquare (\<lambda>(x, y). f (x, y)^2)"
  sorry

end
