theory putnam_2000_a4 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_2000_a4:
  shows "\<exists> y :: real. ((\<lambda> B. interval_lebesgue_integral lebesgue 0 B (\<lambda> x. sin x * sin (x ^ 2))) \<longlongrightarrow> y) at_top"
  sorry

end