theory putnam_1985_b6 imports Complex_Main "HOL-Analysis.Finite_Cartesian_Product" "HOL-Analysis.Determinants"
begin

theorem putnam_1985_b6:
  fixes n::nat and G::"(real^'a^'a) set"
  assumes npos : "n > 0"
    and acard : "CARD('a) = n"
    and Gfin : "finite G"
    and groupG : "(\<forall>g \<in> G. \<forall>h \<in> G. g ** h \<in> G) \<and> (1 \<in> G) \<and> (\<forall>g \<in> G. \<exists>h \<in> G. g ** h = 1)"
    and hG : "(\<Sum>M \<in> G. trace M) = 0"
  shows "(\<Sum>M \<in> G. M) = 0"
  sorry

end