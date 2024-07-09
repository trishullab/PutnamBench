theory putnam_2014_b3 imports Complex_Main
"HOL-Analysis.Cartesian_Space"
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_2014_b3:
  fixes m n :: nat
  and A :: "rat^'n^'m"
  assumes mnpos: "m > 0 \<and> n > 0"
  and pmpncard: "CARD('m) = m \<and> CARD('n) = n"
  and Aprime: "card {p::nat. prime p \<and> (\<exists>(i::'m)(j::'n). \<bar>A$i$j\<bar> = p)} \<ge> m + n"
  shows "rank A \<ge> 2"
  sorry

end
