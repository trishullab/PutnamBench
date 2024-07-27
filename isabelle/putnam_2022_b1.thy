theory putnam_2022_b1 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2022_b1:
  fixes n ::nat
  and P :: "real poly"
  and B :: "real poly"
  assumes npos: "n \<ge> 1"
  and Pconst: "coeff P 0 = 0"
  and Pdegree: "degree P = n"
  and Pint: "\<forall>k::nat\<in>{1..n}. coeff P k = round (coeff P k)"
  and podd: "odd (round (coeff P 1))"
  and hB: "\<forall>x::real. exp (poly P x) = poly B x"
  shows "\<forall>k::nat. coeff B k \<noteq> 0"
  sorry

end