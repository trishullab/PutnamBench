theory putnam_1974_b6 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

definition putnam_1974_b6_solution :: "nat \<times> nat \<times> nat" where "putnam_1974_b6_solution \<equiv> undefined"
(* (nat (round ((2^1000 - 1)/3)), nat (round ((2^1000 - 1)/3)), 1 + nat (round ((2^1000 - 1)/3))) *)
theorem putnam_1974_b6:
  fixes n :: nat
  and count0 :: nat
  and count1 :: nat
  and count2 :: nat
  defines "n \<equiv> 1000"
  and "count0 \<equiv> card {S::nat set. S \<subseteq> {1..n} \<and> [card S = 0] (mod 3)}"
  and "count1 \<equiv> card {S::nat set. S \<subseteq> {1..n} \<and> [card S = 1] (mod 3)}"
  and "count2 \<equiv> card {S::nat set. S \<subseteq> {1..n} \<and> [card S = 2] (mod 3)}"
  shows "(count0, count1, count2) = putnam_1974_b6_solution"
  sorry

end
