theory putnam_1962_b3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Linear_Algebra"
"HOL-Analysis.Elementary_Topology"
begin

theorem putnam_1962_b3:
  fixes S :: "(real^2) set"
  assumes hS : "convex S \<and> 0 \<in> S"
    and htopo : "0 \<in> interior S \<or> closed S"
    and hray : "\<forall> P :: real^2. P \<noteq> 0 \<longrightarrow> (\<exists> (Q :: real^2) (k :: real). k > 0 \<and> Q$1 = k * P$1 \<and> Q$2 = k * Q$2 \<and> Q \<notin> S)"
  shows "bounded S"
  sorry

end