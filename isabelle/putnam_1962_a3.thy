theory putnam_1962_a3 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1962_a3:
  fixes A B C A' B' C' P Q R :: "real^2"
    and k :: "real"
  assumes hk : "k > 0"
    and hABC : "\<not> collinear {A,B,C}"
    and hA' : "A' \<in> closed_segment B C \<and> (dist C A')/(dist A' B) = k"
    and hB' : "B' \<in> closed_segment C A \<and> (dist A B')/(dist B' C) = k"
    and hC' : "C' \<in> closed_segment A B \<and> (dist B C')/(dist C' A) = k"
    and hP : "P \<in> closed_segment B B' \<and> P \<in> closed_segment C C'"
    and hQ : "Q \<in> closed_segment C C' \<and> Q \<in> closed_segment A A'"
    and hR : "R \<in> closed_segment A A' \<and> R \<in> closed_segment B B'"
  shows "(emeasure lebesgue (convex hull {P, Q, R})) / (emeasure lebesgue (convex hull {A,B,C})) = (k-1)^2 / (k^2 + k + 1)"
  sorry

end