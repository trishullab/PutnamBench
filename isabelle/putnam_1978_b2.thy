theory putnam_1978_b2 imports Complex_Main
begin

definition putnam_1978_b2_solution :: "rat" where
"putnam_1978_b2_solution \<equiv> undefined"
(* (rat_of_nat 7)/4 *)
theorem putnam_1978_b2:
  shows "(\<Sum> i \<in> {1 :: nat..}. (\<Sum> j \<in> {1 :: nat..}. (rat_of_nat 1)/(rat_of_nat (i^2 * j + 2 * i * j + i * j^2)))) = putnam_1978_b2_solution"
  sorry

end