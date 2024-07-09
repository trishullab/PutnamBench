theory putnam_1973_a1 imports Complex_Main
"HOL-Analysis.Linear_Algebra"
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1973_a1:
  fixes A B C X Y Z :: "real^2"
  assumes hnoncol : "\<not> collinear {A,B,C}"
    and hX : "X \<in> closed_segment B C"
    and hY : "Y \<in> closed_segment C A"
    and hZ : "Z \<in> closed_segment A B"
  shows "((dist B X \<le> dist X C \<and> dist C Y \<le> dist Y A \<and> dist A Z \<le> dist Z B) \<longrightarrow> emeasure lebesgue (convex hull {X,Y,Z}) \<ge> (1/(4 :: real)) * (emeasure lebesgue (convex hull {A,B,C})))
         \<and> (Inf {(emeasure lebesgue (convex hull {A,Z,Y})), (emeasure lebesgue (convex hull {B,X,Z})), (emeasure lebesgue (convex hull {C,Y,X}))} \<le> emeasure lebesgue (convex hull {X,Y,Z}))"
  sorry

end