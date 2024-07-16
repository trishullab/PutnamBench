theory putnam_2002_a2 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Linear_Algebra"
"HOL-Analysis.Elementary_Metric_Spaces"
begin

theorem putnam_2002_a2:
  fixes hemi :: "(real^3) \<Rightarrow> ((real^3) set)"
  defines "hemi \<equiv> (\<lambda>V::real^3. {P::real^3. P \<bullet> V \<ge> 0})"
  shows "\<forall>S::(real^3) set. ((S \<subseteq> sphere 0 1 \<and> card S = 5) \<longrightarrow> (\<exists>V::real^3. V \<noteq> 0 \<and> card (S \<inter> hemi V) \<ge> 4))"
  sorry

end
