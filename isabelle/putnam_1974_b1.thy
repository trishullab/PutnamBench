theory putnam_1974_b1 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Combinatorics.Permutations"
begin

definition putnam_1974_b1_solution :: "(real^2) list \<Rightarrow> bool" where "putnam_1974_b1_solution \<equiv> undefined"
(* \<lambda> points. \<exists> (B :: real) (ordering :: nat \<Rightarrow> nat). B > 0 \<and> ordering permutes {0..<5} \<and> (\<forall> i < 5. dist (points!(ordering i)) (points!(ordering ((i + 1) mod 5))) = B) *)
theorem putnam_1974_b1:
  fixes on_unit_circle :: "(real^2) list \<Rightarrow> bool"
  and distance_fun :: "(real^2) list \<Rightarrow> real"
  defines "on_unit_circle \<equiv> \<lambda> points. \<forall> i < 5. dist (points!i) 0 = 1"
  and "distance_fun \<equiv> \<lambda> points. \<Sum> j = 0..< 5. \<Sum> i = 0 ..< j. dist (points!i) (points!j)"
  shows "\<forall> points :: (real^2) list. length points = 5 \<longrightarrow> on_unit_circle points \<longrightarrow> ((distance_fun points = (GREATEST R. \<exists> pts. length pts = 5 \<and> on_unit_circle pts \<and> R = distance_fun pts)) \<longleftrightarrow> putnam_1974_b1_solution points)" 
  sorry

end