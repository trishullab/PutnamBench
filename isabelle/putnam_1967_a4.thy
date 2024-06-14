theory putnam_1967_a4 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1967_a4:
  fixes lambda :: real
  assumes hlambda: "lambda > 1/2"
  shows "\<not>(\<exists>u::real\<Rightarrow>real. \<forall>x::real\<in>{0..1}. u x = 1 + lambda * (interval_lebesgue_integral lebesgue x 1 (\<lambda>y::real. u y * u (y - x))))"
  sorry

end
