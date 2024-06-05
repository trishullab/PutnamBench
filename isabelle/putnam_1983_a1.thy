theory putnam_1983_a1 imports Complex_Main
begin

definition putnam_1983_a1_solution :: "nat" where "putnam_1983_a1_solution \<equiv> undefined"
(* 2301 *)
theorem putnam_1983_a1:
  shows "card {n :: nat. n > 0 \<and> (n dvd 10^40 \<or> n dvd 20^30)} = putnam_1983_a1_solution"
  sorry
end