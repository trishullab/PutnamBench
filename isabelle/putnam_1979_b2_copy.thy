theory putnam_1979_b2 imports
Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1979_b2:
  shows "\<forall> a b :: real. 0 < a \<and> a < b \<longrightarrow> ((\<lambda> t :: real. (interval_lebesgue_integral lebesgue 0 1 (\<lambda> x. (b * x + a * (1 - x)) powr t)) powr (1 / t)) \<longlongrightarrow> ( \<lambda> a b. exp (-1) * (b powr b / a powr a) powr (1 / (b - a)) ) a b) (at 0)"
  sorry

end