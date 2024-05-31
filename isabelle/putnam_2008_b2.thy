theory putnam_2008_b2 imports Complex_Main
"HOL-Analysis.Interval_Integral"

begin

definition putnam_2008_b2_solution :: "real" where
"putnam_2008_b2_solution \<equiv> undefined"
(* -1 *)
theorem putnam_2008_b2:
  fixes F :: "nat \<Rightarrow> real \<Rightarrow> real"
  assumes hF0 : "\<forall> x :: real. F 0 x = ln x"
    and hFn : "\<forall> n :: nat. \<forall> x > 0. F (n + 1) x = interval_lebesgue_integral lebesgue 0 x (F n)"
  shows "filterlim (\<lambda> n :: nat. (fact n) * (F n 1) / ln n) (nhds putnam_2008_b2_solution) at_top"
  sorry

end