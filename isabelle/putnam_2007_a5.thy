theory putnam_2007_a5 imports Complex_Main
"HOL-Algebra.Multiplicative_Group"
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_2007_a5:
  fixes G (structure)
  and p :: nat
  and n :: nat
  assumes hG: "group G \<and> finite (carrier G)"
  and hp: "prime p"
  and hn: "n \<equiv> card {g::'a. g \<in> carrier G \<and> (group.ord G) g = p}"
  shows "n = 0 \<or> p dvd (n+1)"
  sorry

end
