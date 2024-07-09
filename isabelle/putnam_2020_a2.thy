theory putnam_2020_a2 imports
Complex_Main
begin

definition putnam_2020_a2_solution :: "nat \<Rightarrow> nat" where "putnam_2020_a2_solution \<equiv> undefined"
(* \<lambda> k. 4 ^ k *)
theorem putnam_2020_a2:
  fixes k :: nat
  shows "(\<Sum> j = 0..k. 2 ^ (k - j) * (k + j choose j)) = putnam_2020_a2_solution k"
  sorry

end