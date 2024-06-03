theory putnam_2007_b4 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2007_b4:
  fixes n :: nat
  assumes npos: "n > 0"
  shows "card {(P :: real poly, Q :: real poly). P ^ 2 + Q ^ 2 = (monom 1 (2 * n)) + 1 \<and> degree P > degree Q} = ( \<lambda> n. 2 ^ (n + 1) ) n"
  sorry

end