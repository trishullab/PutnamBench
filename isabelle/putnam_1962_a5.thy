theory putnam_1962_a5 imports Complex_Main
begin

definition putnam_1962_a5_solution :: "nat \<Rightarrow> nat" where "putnam_1962_a5_solution \<equiv> undefined"
(* \<lambda> n :: nat. n * (n + 1) * 2^(n - 2) *)
theorem putnam_1962_a5:
  shows "\<forall> n \<ge> 2. putnam_1962_a5_solution n = (\<Sum> k \<in> {1..n}. (n choose k) * k^2)"
  sorry

end