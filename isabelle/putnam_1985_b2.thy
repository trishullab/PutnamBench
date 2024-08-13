theory putnam_1985_b2 imports Complex_Main 
"HOL-Computational_Algebra.Polynomial" 
"HOL-Computational_Algebra.Primes" 
"HOL-Analysis.Derivative"
begin

definition putnam_1985_b2_solution :: "nat multiset" where "putnam_1985_b2_solution \<equiv> undefined"
(*  (replicate_mset 99 101) *)
theorem putnam_1985_b2:
  fixes f :: "nat \<Rightarrow> (nat poly)"
  assumes hf0x : "f 0 = 1"
    and hfn0 : "\<forall> n \<ge> 1. poly (f n) 0 = 0"
    and hfderiv : "\<forall> n :: nat. pderiv (f (n + 1)) = (monom (n + 1) 0) * (pcompose (f n) (Poly [1, 1]))"
  shows "prime_factorization (poly (f 100) 1) = putnam_1985_b2_solution"
  sorry

end