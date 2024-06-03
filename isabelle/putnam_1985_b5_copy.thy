theory putnam_1985_b5 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1985_b5:
  assumes "interval_lebesgue_integral lebesgue MInfty PInfty (\<lambda>x. exp (- (x^2))) = sqrt (pi)"
  shows "interval_lebesgue_integral lebesgue 0 PInfty (\<lambda>t. t powr (-1/2) * exp (-1985 * (t + t powi (-1)))) = ( sqrt (pi / 1985) * exp (-3970) )"
  sorry

end