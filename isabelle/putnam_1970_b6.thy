theory putnam_1970_b6 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Elementary_Topology"
"HOL-Analysis.Linear_Algebra"
begin

(* Note: Boosts ZMod 4 to nat *)
theorem putnam_1970_b6:
  fixes L :: "nat \<Rightarrow> real^2"
    and S :: "(real^2) set"
  defines "S \<equiv> {L 0, L 1, L 2, L 3}"
  assumes hSquad : "card S = 4 \<and> (\<forall> s \<subseteq> {0..3}. card s = 3 \<longrightarrow> (\<not> (collinear s)))"
    and hlens : "dist (L 0) (L 1) > 0 \<and> dist (L 1) (L 2) > 0 \<and> dist (L 2) (L 3) > 0 \<and> dist (L 3) (L 0) > 0"
    and horder : "\<forall> i \<in> {0::nat..3}. closed_segment (L i) (L ((i + 1) mod 4)) \<inter> interior (convex hull S) = {}"
    and hcircum : "\<exists> (center :: real^2) (r :: real). center \<in> convex hull S \<and> r > 0 \<and>
          (\<forall> i \<in> {0..3}. \<exists>! I :: real^2. collinear {I, L i, L ((i + 1) mod 4)} \<and> dist center I = r)"
    and harea : "emeasure lebesgue (convex hull S) = sqrt (dist (L 0) (L 1) * dist (L 1) (L 2) * dist (L 2) (L 3) * dist (L 3) (L 0))"
  shows "\<exists> center radius :: real. \<forall> p \<in> S. dist p center = radius"
  sorry

end