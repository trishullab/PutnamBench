theory putnam_1996_b3 imports
Complex_Main
begin

definition putnam_1996_b3_solution :: "nat \<Rightarrow> nat" where "putnam_1996_b3_solution \<equiv> undefined"
(* \<lambda> n :: nat. (2 * n ^ 3 + 3 * n ^ 2 + 18 - 11 * n) div 6 *)
theorem putnam_1996_b3:
  fixes n :: nat
  and xset :: "(nat \<Rightarrow> nat) \<Rightarrow> bool"
  and xsum :: "(nat \<Rightarrow> nat) \<Rightarrow> nat"
  defines "xset \<equiv> \<lambda> x :: nat \<Rightarrow> nat. x ` {0 .. n - 1} = {1 .. n}"
  and "xsum \<equiv> \<lambda> x :: nat \<Rightarrow> nat. \<Sum> i = 0 .. n - 1. x i * x ((i + 1) mod n)"
  assumes nge2 : "n \<ge> 2"
  shows "(GREATEST S. \<exists> x :: nat \<Rightarrow> nat. xset x \<and> xsum x = S) = putnam_1996_b3_solution n"
  sorry

end