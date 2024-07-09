theory putnam_2006_b3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2006_b3_solution :: "nat \<Rightarrow> nat" where "putnam_2006_b3_solution \<equiv> undefined"
(* (\<lambda>n::nat. n choose 2 + 1) *)
theorem putnam_2006_b3:
  fixes SABpart :: "((real^2) set) \<Rightarrow> (((real^2) set) set) \<Rightarrow> bool"
  and LS :: "((real^2) set) \<Rightarrow> nat"
  and n :: nat
  assumes hSABpart: "\<forall>(S::(real^2) set)(AB::((real^2) set) set). SABpart S AB = (card AB = 2 \<and> (\<exists>A\<in>AB. \<exists>B\<in>AB. A \<union> B = S \<and> A \<inter> B = {} \<and> (\<exists>m b::real. (\<forall>p\<in>A. p$2 > m*p$1 + b) \<and> (\<forall>p\<in>B. p$2 < m*p$1 + b))))"
  and hLS: "\<forall>S::(real^2) set. LS S = card {AB::((real^2) set) set. SABpart S AB}"
  and npos: "n > 0"
  shows "(GREATEST LSS::nat. (\<exists>S::(real^2) set. card S = n \<and> LS S = LSS)) = putnam_2006_b3_solution n"
  sorry

end
