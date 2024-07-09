theory putnam_2015_a6 imports Complex_Main
"HOL-Analysis.Determinants"
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2015_a6:
  fixes n :: nat
  and A B M :: "real^'n^'n"
  and charpoly :: "real^'n^'n \<Rightarrow> (real poly)"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hmul: "A ** M = M ** B"
  and hcharpoly: "\<forall>A'::real^'n^'n. charpoly A' = det (mat (monom 1 1) - map_matrix (\<lambda>a::real. monom a 0) A')"
  and hpoly: "charpoly A = charpoly B"
  shows "\<forall>X::real^'n^'n. det (A - M**X) = det (B - X**M)"
  sorry

end
