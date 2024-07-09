theory putnam_2008_b1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Elementary_Metric_Spaces"
begin

definition putnam_2008_b1_solution :: "nat" where "putnam_2008_b1_solution \<equiv> undefined"
(* 2 *)
definition is_rational_point :: "real^2 \<Rightarrow> bool" where "is_rational_point \<equiv> (\<lambda>p::real^2. (\<exists>a b::rat. a = p$1 \<and> b = p$2))"
theorem putnam_2008_b1:
  shows "(GREATEST np::nat. (\<exists>(c::real^2)(r::real). \<not>is_rational_point c \<and> np = card {p::real^2. p \<in> sphere c r \<and> is_rational_point p})) = putnam_2008_b1_solution"
  sorry

end
