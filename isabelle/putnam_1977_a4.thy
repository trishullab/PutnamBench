theory putnam_1977_a4 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1977_a4_solution::"(real poly) \<times> (real poly)" where "putnam_1977_a4_solution \<equiv> undefined"
(* ([: 0, 1 :], [: 1, -1 :]) *)
theorem putnam_1977_a4:
  shows "\<forall>x \<in> {0<..<1::real}. (poly (fst putnam_1977_a4_solution) x) / (poly (snd putnam_1977_a4_solution) x)
    = (\<Sum>n::nat. x^2^n / (1 - x^2^(n+1)))"
  sorry

end