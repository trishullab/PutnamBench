theory putnam_1997_b3 imports Complex_Main

begin

definition putnam_1997_b3_solution :: "nat set" where
"putnam_1997_b3_solution \<equiv> undefined"
(* {n :: nat. (1 \<le> n \<and> n \<le> 4) \<or> (20 \<le> n \<and> n \<le> 24) \<or> (100 \<le> n \<and> n \<le> 104) \<or> (120 \<le> n \<and> n \<le> 124)} *)
theorem putnam_1997_b3:
  fixes n :: "nat"
  assumes hn : "n > 0"
  shows "n \<in> putnam_1997_b3_solution \<longleftrightarrow> \<not> (5 dvd (snd (quotient_of (\<Sum> m \<in> {1..n}. 1/(rat_of_nat m)))))"
  sorry

end