theory putnam_1982_a3 imports Complex_Main
"HOL-Analysis.Interval_Integral"

begin

theorem putnam_1982_a3:
  shows "filterlim (\<lambda> t :: real. (interval_lebesgue_integral lebesgue 0 t (\<lambda> x. (arctan (pi * x) - arctan x)/x))) (nhds ( (pi / 2) * ln pi )) at_top"
  sorry

end