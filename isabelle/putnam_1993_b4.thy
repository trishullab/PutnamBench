theory putnam_1993_b4 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1993_b4:
  fixes K::"(real\<times>real) \<Rightarrow> real" and f g::"real\<Rightarrow>real"
  assumes Kpos : "\<forall>x::real \<in> {0..1}. \<forall>y::real \<in> {0..1}. K (x, y) > 0"
    and Kcont : "continuous_on {(x::real, y::real). x \<in> {0..1} \<and> y \<in> {0..1}} K"
    and fgpos : "\<forall>x::real \<in> {0..1}. f x > 0 \<and> g x > 0"
    and fgcont : "continuous_on {0..1::real} f \<and> continuous_on {0..1::real} g"
    and fgint : "\<forall>x::real \<in> {0..1}. interval_lebesgue_integral lebesgue 0 1 (\<lambda>y. f y * K (x, y)) = g x \<and>
       interval_lebesgue_integral lebesgue 0 1 (\<lambda>y. g y * K (x, y)) = f x"
  shows "\<forall>x::real \<in> {0..1}. f x = g x"
  sorry

end