theory putnam_2006_b1 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2006_b1_solution :: "real" where
"putnam_2006_b1_solution \<equiv> undefined"
(* 3 * sqrt 3 / 2 *)
theorem putnam_2006_b1:
  fixes curve :: "(real^2) set"
    and equilateral :: "(real^2) set \<Rightarrow> bool"
  defines "curve \<equiv> {p :: real^2. (p$1)^3 + 3 * (p$1) * (p$2) + (p$2)^3 = 1}"
    and "equilateral \<equiv> \<lambda> S :: (real^2) set. card S = 3 \<and> (\<exists> d :: real. \<forall> P \<in> S. \<forall> Q \<in> S. P \<noteq> Q \<longrightarrow> dist P Q = d)"
  shows "((\<exists>! S :: (real^2) set. S \<subseteq> curve \<and> equilateral S) \<and> (\<exists> S :: (real^2) set. S \<subseteq> curve \<and> equilateral S \<and> emeasure lebesgue (convex hull S) = putnam_2006_b1_solution))"
  sorry

end