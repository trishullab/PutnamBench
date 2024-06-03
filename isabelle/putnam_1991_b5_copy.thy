theory putnam_1991_b5 imports
Complex_Main
"HOL-Computational_Algebra.Primes"
"HOL-Number_Theory.Cong"
begin

(* Note: Uses modular congruence instead of the field Zmod p as in Lean *)
theorem putnam_1991_b5:
  fixes p :: nat
  assumes podd: "odd p"
  and pprime: "prime p"
  shows "card ({z \<in> {0 .. p - 1}. \<exists> x \<in> {0 .. p - 1}. [z = x ^ 2] (mod p)} \<inter> {z \<in> {0 .. p - 1}. \<exists> y \<in> {0 .. p - 1}. [z = y ^ 2 + 1] (mod p)}) = ( \<lambda> p :: nat. nat (ceiling (p / 4)) ) p"
  sorry

end