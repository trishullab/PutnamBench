theory putnam_2003_b5 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2003_b5:
  fixes A B C :: "real^2"
  assumes hABC: "dist 0 A = 1 \<and> dist 0 B = 1 \<and> dist 0 C = 1 \<and> dist A B = dist A C \<and> dist A B = dist B C"
  shows "\<exists>f::real\<Rightarrow>real. \<forall>P::real^2. dist 0 P < 1 \<longrightarrow> (\<exists>X Y Z::real^2.
  dist X Y = dist P A \<and> dist Y Z = dist P B \<and> dist X Z = dist P C \<and>
  measure lebesgue (convex hull {X, Y, Z}) = f (dist 0 P))"
  sorry

end
