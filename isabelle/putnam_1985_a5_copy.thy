theory putnam_1985_a5 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1985_a5:
  fixes I::"nat\<Rightarrow>real"
  defines "I \<equiv> \<lambda>m. interval_lebesgue_integral lebesgue 0 (2 * pi) (\<lambda>x. (\<Prod>k=1..m. cos (k * x)))"
  shows "( 3, 4, 7, 8 ) = {m. m \<in> {1..10} \<and> I m \<noteq> 0}"
  sorry

end