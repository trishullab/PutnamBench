theory putnam_1984_a2 imports Complex_Main
begin

definition putnam_1984_a2_solution :: "rat" where "putnam_1984_a2_solution \<equiv> undefined"
(* 2 *)
theorem putnam_1984_a2:
  shows "(\<Sum> (k :: nat) \<in> {1..}. 6^k/((3^(k+1) - 2^(k+1))*(3^k - 2^k))) = putnam_1984_a2_solution"
  sorry

end