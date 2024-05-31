theory putnam_1985_b2 imports
  Complex_Main "HOL-Computational_Algebra.Polynomial" "HOL-Computational_Algebra.Primes" "HOL-Analysis.Derivative"
begin

definition putnam_1985_b2_solution::"nat multiset" where "putnam_1985_b2_solution \<equiv> undefined"
(*  (replicate_mset 99 101) *)
theorem putnam_1985_b2:
  fixes f::"nat\<Rightarrow>real\<Rightarrow>real"
  assumes hf0x : "\<forall>x::real. f 0 x = 1"
    and hfn0 : "\<forall>n::nat \<ge> 1. f n 0 = 0"
    and hfderiv : "\<forall>x::real. \<forall>n::nat. (deriv (f (n+1)) x) = (n+1) * f n (x+1)"
  shows "\<exists>a::nat. a = f 100 1 \<and> prime_factorization a = putnam_1985_b2_solution"
  sorry

end