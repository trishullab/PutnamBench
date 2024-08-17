theory putnam_1986_a4 imports Complex_Main "HOL-Analysis.Finite_Cartesian_Product" "HOL-Combinatorics.Permutations"
begin

definition putnam_1986_a4_solution::"rat\<times>rat\<times>rat\<times>rat\<times>rat\<times>rat\<times>rat" where "putnam_1986_a4_solution \<equiv> undefined"
(* (1, 4, 2, 3, -4, 2, 1) *)
theorem putnam_1986_a4:
  fixes n :: nat
    and f :: nat
  defines "f \<equiv> card {A::int^'a^'a. (\<forall>i::'a. \<forall>j::'a. (A$i$j) \<in> {-1, 0, 1}) \<and>
    (\<exists>S::int. \<forall>p::'a\<Rightarrow>'a. p permutes UNIV \<longrightarrow> S = (\<Sum>i::'a \<in> UNIV. A$i$(p i)))}"
  assumes npos : "n > 0"
    and hcard : "CARD('a) = n"
  shows "let (a1, b1, a2, b2, a3, b3, a4) = putnam_1986_a4_solution in (f = a1 * b1^n + a2 * b2^n + a3 * b3^n + a4)"
  sorry

end
