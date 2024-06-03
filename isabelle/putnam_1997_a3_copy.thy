theory putnam_1997_a3 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1997_a3:
  fixes series1 series2::"real\<Rightarrow>real"
  defines "series1 \<equiv> \<lambda>x. (\<Sum>n::nat. (-1)^n * x^(2*n+1) / (\<Prod>i=0..<n. 2 * (i + 1)))"
    and "series2 \<equiv> \<lambda>x. (\<Sum>n::nat. x^(2*n) / (\<Prod>i=0..<n. (2 * (i+1))^2))"
  shows "((\<lambda>t::real. interval_lebesgue_integral lebesgue 0 t (\<lambda>x. series1 x * series2 x)) \<longlongrightarrow> ( sqrt (exp 1) )) at_top"
  sorry

end