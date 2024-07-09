theory putnam_1966_b1 imports Complex_Main
"HOL-Analysis.Line_Segment"
"HOL-Analysis.Linear_Algebra"
"HOL-Analysis.Elementary_Topology"
begin

(* Note: Uses nats instead of finite type of n elements *)
theorem putnam_1966_b1:
  fixes n :: "nat"
    and L :: "nat \<Rightarrow> (real^2)"
  assumes hn : "n \<ge> 3"
    and hsq : "\<forall> i :: nat < n. (L i)$1 \<in> {0 :: real..1} \<and> (L i)$2 \<in> {0 :: real..1}"
    and hnoncol : "\<forall> i j k :: nat. (i < n \<and> j < n \<and> k < n) \<longrightarrow> (\<not> collinear {L i, L j, L k})"
    and hconvex : "\<forall> i :: nat < n. closed_segment (L i) (L ((i + 1) mod n)) \<inter> interior (convex hull {x :: real^2. \<exists> j \<in> {0 :: nat..<n}. L j = x}) = {}"
  shows "(\<Sum> i \<in> {0::nat..<n}. (dist (L i) (L (i+1)))^2) \<le> 4"
  sorry

end