theory putnam_1962_a1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Convex"
begin

theorem putnam_1962_a1:
  fixes S :: "(real^2) set"
  assumes hS : "card S = 5"
    and hnoncol : "\<forall> s \<subseteq> S. card S = 3 \<longrightarrow> \<not>collinear s"
  shows "\<exists> T \<subseteq> S. card T = 4 \<and> \<not>(\<exists> t \<in> T. t \<in> convex hull (T - {t}))"
  sorry

end