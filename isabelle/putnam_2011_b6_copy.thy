theory putnam_2011_b6 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_2011_b6:
  fixes p :: nat
  assumes hp: "odd p \<and> prime p"
  shows "card {n::nat\<in>{0..(p-1)}. \<not>(p dvd (\<Sum>k::nat=0..(p-1). fact k * n^k))} \<ge> (p + 1)/2"
  sorry

end
