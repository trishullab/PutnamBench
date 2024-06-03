theory putnam_1985_a6 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1985_a6:
  fixes \<Gamma>::"(real poly) \<Rightarrow> real" and f::"real poly"
  defines "\<Gamma> \<equiv> \<lambda>P. (\<Sum>i=0..(degree P). (coeff P i)^2)"
    and "f \<equiv> Poly [2, 7, 3]"
  shows "poly ( Poly [1, 5, 6] ) 0 = 1 \<and> (\<forall>n::nat \<ge> 1. \<Gamma> (f^n) = \<Gamma> (( Poly [1, 5, 6] )^n))"
  sorry

end