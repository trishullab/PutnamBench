theory putnam_1985_a6 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1985_a6_solution::"real poly" where "putnam_1985_a6_solution \<equiv> undefined"
(* Poly [1, 5, 6] *)
theorem putnam_1985_a6:
  fixes \<Gamma>::"(real poly) \<Rightarrow> real" and f::"real poly"
  defines "\<Gamma> \<equiv> \<lambda>P. (\<Sum>i=0..(degree P). (coeff P i)^2)"
    and "f \<equiv> Poly [2, 7, 3]"
  shows "poly putnam_1985_a6_solution 0 = 1 \<and> (\<forall>n::nat \<ge> 1. \<Gamma> (f^n) = \<Gamma> (putnam_1985_a6_solution^n))"
  sorry

end