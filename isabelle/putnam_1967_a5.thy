theory putnam_1967_a5 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1967_a5:
  fixes R :: "(real^2) set"
  assumes hR : "convex R \<and> emeasure lebesgue R > pi / 4"
  shows "\<exists> P \<in> R. \<exists> Q \<in> R. dist P Q = 1"
  sorry

end