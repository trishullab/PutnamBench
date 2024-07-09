theory putnam_2016_b3 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2016_b3:
  fixes S :: "(real^2) set"
  assumes hS: "finite S \<and> (\<forall> A \<in> S. \<forall> B \<in> S. \<forall> C \<in> S. emeasure lebesgue (convex hull {A, B, C}) \<le> 1)"
  shows "\<exists> A' B' C' :: real^2. emeasure lebesgue (convex hull {A', B', C'}) = 4 \<and> convex hull {A', B', C'} \<supseteq> S"
  sorry

end