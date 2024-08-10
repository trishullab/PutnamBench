theory putnam_1989_a1 imports Complex_Main "HOL-Computational_Algebra.Primes"
begin

definition putnam_1989_a1_solution::nat where "putnam_1989_a1_solution \<equiv> undefined"
(* 1 *)
theorem putnam_1989_a1:
  fixes pdigalt::"(nat list) \<Rightarrow> bool"
  defines "pdigalt \<equiv> \<lambda>pdig. odd (length pdig) \<and> (\<forall>i \<in> {0..<(length pdig)}. pdig!i = (if (even i) then 1 else 0))"
  shows "putnam_1989_a1_solution = card {p::nat. p > 0 \<and> prime p \<and> (\<exists> dig. (foldr (\<lambda>a b. a + 10 * b) dig 0) = p \<and> pdigalt dig)}"
  sorry

end