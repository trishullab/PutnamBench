theory putnam_1993_a5 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1993_a5:
  fixes f::"real\<Rightarrow>real"
  defines "f \<equiv> \<lambda>x. ((x^2 - x) / (x^3 - 3 * x + 1))^2"
  shows "(interval_lebesgue_integral lebesgue (-100) (-10) f + 
                interval_lebesgue_integral lebesgue (1/101) (1/11) f + 
                interval_lebesgue_integral lebesgue (101/100) (11/10) f ) \<in> \<rat>"
  sorry

end