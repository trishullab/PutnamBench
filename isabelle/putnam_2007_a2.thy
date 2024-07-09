theory putnam_2007_a2 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2007_a2_solution :: ennreal where "putnam_2007_a2_solution \<equiv> undefined"
(* 4 *)
theorem putnam_2007_a2:
  fixes Sinterpos :: "((real^2) set) \<Rightarrow> bool"
  and Sinterneg :: "((real^2) set) \<Rightarrow> bool"
  and Sconv :: "((real^2) set) \<Rightarrow> bool"
  assumes hSinterpos: "\<forall>S::(real^2) set. Sinterpos S = ((\<exists>p\<in>S. p$1 > 0 \<and> p$2 > 0 \<and> p$1*p$2 = 1) \<and> (\<exists>p\<in>S. p$1 < 0 \<and> p$2 < 0 \<and> p$1*p$2 = 1))"
  assumes hSinterneg: "\<forall>S::(real^2) set. Sinterneg S = ((\<exists>p\<in>S. p$1 < 0 \<and> p$2 > 0 \<and> p$1*p$2 = -1) \<and> (\<exists>p\<in>S. p$1 > 0 \<and> p$2 < 0 \<and> p$1*p$2 = -1))"
  assumes hSconv: "\<forall>S::(real^2) set. Sconv S = (convex S \<and> Sinterpos S \<and> Sinterneg S)"
  shows "(LEAST area::ennreal. (\<exists>S::(real^2) set. Sconv S \<and> emeasure lebesgue S = area)) = putnam_2007_a2_solution"
  sorry

end
