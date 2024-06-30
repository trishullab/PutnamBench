theory putnam_1964_b6 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Elementary_Metric_Spaces"
begin

theorem putnam_1964_b6:
  fixes D :: "(real^2) set"
  and cong :: "((real^2) set) \<Rightarrow> ((real^2) set) \<Rightarrow> bool"
  defines "D \<equiv> cball 0 1"
  and "cong \<equiv> (\<lambda>A B::(real^2) set. (\<exists>f::(real^2)\<Rightarrow>(real^2). B = f ` A \<and> (\<forall>v w::real^2. dist v w = dist (f v) (f w))))"
  shows "\<not>(\<exists>A B::(real^2) set. cong A B \<and> A \<inter> B = {} \<and> A \<union> B = D)"
  sorry

end
