theory putnam_1969_b6 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1969_b6:
  fixes A :: "real^2^3"
  and B :: "real^3^2"
  and p :: "real^3^3"
  assumes hp: "p$1$1 = 8 \<and> p$1$2 = 2 \<and> p$1$3 = -2 \<and>
  p$2$1 = 2 \<and> p$2$2 = 5 \<and> p$2$3 = 4 \<and>
  p$3$1 = -2 \<and> p$3$2 = 4 \<and> p$3$3 = 5"
  and hAB: "A ** B = p"
  shows "B ** A = mat 9"
  sorry

end
