theory putnam_1968_b5 imports
Complex_Main
"HOL-Computational_Algebra.Primes"
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_1968_b5_solution :: "nat \<Rightarrow> nat" where "putnam_1968_b5_solution \<equiv> undefined"
(* \<lambda> p. p ^ 2 + p *)
theorem putnam_1968_b5:
  fixes p :: nat
  assumes hp: "prime p"
  and pcard: "CARD('p::field) = p"
  shows "card {M :: 'p^2^2. M$1$1 + M$2$2 = 1 \<and> M$1$1 * M$2$2 - M$1$2 * M$2$1 = 0} = putnam_1968_b5_solution p"
  sorry

end