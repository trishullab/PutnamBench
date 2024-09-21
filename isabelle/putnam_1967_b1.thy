theory putnam_1967_b1 imports Complex_Main
"HOL-Analysis.Elementary_Metric_Spaces"
"HOL-Analysis.Elementary_Topology"
"HOL-Analysis.Linear_Algebra"
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Line_Segment"
"HOL-Number_Theory.Cong"
begin

(* Note: Boosts domains from ZMod 6 to nat *)
theorem putnam_1967_b1:
  fixes r :: "real"
    and L :: "nat \<Rightarrow> real^2"
    and P Q R :: "real^2"
  defines "P \<equiv> midpoint (L 1) (L 2)"
    and "Q \<equiv> midpoint (L 3) (L 4)"
    and "R \<equiv> midpoint (L 5) (L 0)"
  assumes hr : "r > 0"
    and hcyclic : "\<exists> center :: real^2. (\<forall> i \<in> {0::nat..5}. dist center (L i) = r)"
    and horder : "\<forall> i \<in> {0::nat..5}. \<forall> j \<in> {0::nat..5}. i \<noteq> j \<longrightarrow>  [i + 1 = j] (mod 6) \<or> [i = j + 1] (mod 6) \<or> closed_segment (L i) (L j) \<inter> interior (convex hull {L 0, L 1, L 2, L 3, L 4, L 5}) \<noteq> {}"
    and hlens : "dist (L 0) (L 1) = r \<and> dist (L 2) (L 3) = r \<and> dist (L 4) (L 5) = r"
    and hdist : "L 1 \<noteq> L 2 \<and> L 3 \<noteq> L 4 \<and> L 5 \<noteq> L 0"
  shows "dist P Q = dist R P \<and> dist Q R = dist P Q"
  sorry

end