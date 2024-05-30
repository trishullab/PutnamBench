theory putnam_1980_b6 imports
Complex_Main
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_1980_b6:
  fixes G :: "nat \<times> nat \<Rightarrow> rat"
  assumes hG: "\<forall> d n :: nat. d \<le> n \<longrightarrow> ((d = 1 \<longrightarrow> G (d, n) = 1 / n) \<and> (d > 1 \<longrightarrow> G (d, n) = (d / n) * (\<Sum> i = d..n. G (d - 1, i - 1))))"
  shows "\<forall> d p :: nat. (1 < d \<and> d \<le> p \<and> prime p) \<longrightarrow> \<not>(p dvd (snd (quotient_of (G (d, p)))))"
  sorry

end
