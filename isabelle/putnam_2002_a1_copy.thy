theory putnam_2002_a1 imports Complex_Main "HOL-Computational_Algebra.Polynomial" "HOL-Analysis.Derivative"
begin

theorem putnam_2002_a1:
  fixes k::nat and P::"nat \<Rightarrow> (real poly)"
  assumes kpos : "k > 0"
    and Pderiv : "\<forall>n::nat. \<forall>x::real. (deriv^^n) (\<lambda>x'::real. 1 / (x' ^ k - 1)) x = (poly (P n) x) / ((x^k - 1) ^ (n+1))"
  shows "\<forall>n::nat. (poly (P n) 1) = ( \<lambda>k. \<lambda>n. (-k) ^n * fact n ) k n"
  sorry

end