theory putnam_1977_a4 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1977_a4:
  shows "\<forall>x \<in> {0<..<1::real}. (poly (fst ( ([: 0, 1 :], [: 1, -1 :]) )) x) / (poly (snd ( ([: 0, 1 :], [: 1, -1 :]) )) x)
    = (\<Sum>n::nat. x^2^n / (1 - x^2^(n+1)))"
  sorry

end