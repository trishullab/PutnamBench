theory putnam_1996_b1 imports
Complex_Main
begin

fun putnam_1996_b1_solution :: "nat \<Rightarrow> nat" 
  where "putnam_1996_b1_solution n = undefined"
(*  "putnam_1996_b1_solution 0 = 0"
  | "putnam_1996_b1_solution (Suc 0) = 1"
  | "putnam_1996_b1_solution (Suc (Suc n)) = putnam_1996_b1_solution n + putnam_1996_b1_solution (Suc n)" *)
theorem putnam_1996_b1:
  fixes selfish :: "nat set \<Rightarrow> bool"
  and n :: nat
  defines "selfish \<equiv> \<lambda> s. card s \<in> s"
  assumes npos: "n \<ge> 1"
  shows "card {s :: nat set. s \<subseteq> {1..n} \<and> selfish s \<and> (\<forall> ss :: nat set. ss \<subset> s \<longrightarrow> \<not>selfish ss)} = putnam_1996_b1_solution n"
  sorry

end