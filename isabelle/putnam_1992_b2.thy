theory putnam_1992_b2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1992_b2:
  fixes Q :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  defines "Q \<equiv> (\<lambda>n k::nat. coeff ((monom 1 0 + monom 1 1 + monom 1 2 + monom 1 3)^n) k)"
  shows "\<forall>n k::nat. Q n k = (\<Sum>j::nat=0..k. (n choose j) * (if 2 * j \<le> k then n choose (k - 2*j) else 0))"
  sorry

end
