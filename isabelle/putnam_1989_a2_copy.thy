theory putnam_1989_a2 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1989_a2:
  fixes a b::real
  assumes abpos : "a > 0 \<and> b > 0"
  shows "set_lebesgue_integral lebesgue {(x::real, y::real). x \<in> {0..a} \<and> y \<in> {0..b}} (\<lambda> (x, y). exp (max (b^2 * x^2) (a^2 * y^2)))
     = ( \<lambda>a b::real. (exp (a^2 * b^2) - 1) / (a * b) ) a b"
  sorry

end