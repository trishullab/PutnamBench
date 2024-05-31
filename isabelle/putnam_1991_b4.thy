theory putnam_1991_b4 imports
Complex_Main
"HOL-Computational_Algebra.Primes"
"HOL-Number_Theory.Cong"
begin

theorem putnam_1991_b4:
  fixes p :: nat
  assumes podd: "odd p"
  and pprime: "prime p"
  shows "[(\<Sum> j = 0 .. p. (p choose j) * ((p + j) choose j)) = 2 ^ p + 1] (mod p ^ 2)"
  sorry

end