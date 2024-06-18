theory putnam_1965_a5 imports
Complex_Main
"HOL-Combinatorics.Permutations"
begin

(* Note: This formalization uses nat \<Rightarrow> nat instead of finite types. *)
definition putnam_1965_a5_solution :: "nat \<Rightarrow> nat" where "putnam_1965_a5_solution \<equiv> undefined"
(* \<lambda> n. 2 ^ (n - 1) *)
theorem putnam_1965_a5:
  shows "\<forall> n > 0. card {p :: nat \<Rightarrow> nat. (p permutes {1 .. n}) \<and> p 0 = 0 \<and> (\<forall> m > n. p m = 0) \<and> (\<forall> m \<in> {2 .. n}. \<exists> k \<in> {1 ..< m}. p m = p k + 1 \<or> p m = p k - 1)} = putnam_1965_a5_solution n"
  sorry

end