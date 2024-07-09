theory putnam_1974_b2 imports
Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1974_b2:
  fixes y :: "real \<Rightarrow> real"
  assumes ycontdiff: "y C1_differentiable_on UNIV"
  and limy: "((\<lambda> x :: real. (deriv y x) ^ 2 + (y x) ^ 3) \<longlongrightarrow> 0) at_top"
  shows "(y \<longlongrightarrow> 0) at_top \<and> ((deriv y) \<longlongrightarrow> 0) at_top"
  sorry

end