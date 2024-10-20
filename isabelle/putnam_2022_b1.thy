theory putnam_2022_b1 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2022_b1:
  fixes P :: "int poly"
    and b :: "nat \<Rightarrow> real"
  assumes Pconst: "coeff P 0 = 0"
    and podd: "odd (coeff P 1)"
    and hb: "\<forall>x::real. exp (poly (map_poly real_of_int P) x) = (\<Sum> n :: nat. ((b n) * x^n))"
  shows "\<forall>k::nat. b k \<noteq> 0"
  sorry

end