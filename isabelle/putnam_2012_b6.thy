theory putnam_2012_b6 imports
Complex_Main
"HOL-Library.Cardinality"
"HOL-Computational_Algebra.Primes"
"HOL-Number_Theory.Cong"
"HOL-Combinatorics.Permutations"
begin

theorem putnam_2012_b6:
  fixes p :: nat
  and P :: "('p::field) \<Rightarrow> 'p"
  defines "P \<equiv> \<lambda> i :: 'p. i ^ 3" 
  assumes pcard: "CARD('p) = p"
  and hpodd: "odd p"
  and hpprime: "prime p"
  and hpmod3: "[p = 2] (mod 3)"
  shows "evenperm P \<longleftrightarrow> ([p = 3] (mod 4))" 
  sorry

end