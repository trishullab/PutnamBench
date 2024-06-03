theory putnam_2008_b2 imports Complex_Main
"HOL-Analysis.Interval_Integral"

begin

theorem putnam_2008_b2:
  fixes F :: "nat \<Rightarrow> real \<Rightarrow> real"
  assumes hF0 : "\<forall> x :: real. F 0 x = ln x"
    and hFn : "\<forall> n :: nat. \<forall> x > 0. F (n + 1) x = interval_lebesgue_integral lebesgue 0 x (F n)"
  shows "filterlim (\<lambda> n :: nat. (fact n) * (F n 1) / ln n) (nhds ( -1 )) at_top"
  sorry

end