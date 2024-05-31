theory putnam_1988_b3 imports
Complex_Main
begin

definition putnam_1988_b3_solution :: real where "putnam_1988_b3_solution \<equiv> undefined"
(* (1 + sqrt 3) / 2 *)
theorem putnam_1988_b3:
  fixes r :: "nat \<Rightarrow> real"
  assumes hr: "\<forall> n \<ge> 1. r n = (LEAST s. \<exists> c d :: nat. c + d = n \<and> s = \<bar>c - d * (sqrt 3)\<bar>)"
  shows "(LEAST g :: real. g > 0 \<and> (\<forall> n \<ge> 1. r n \<le> g)) = putnam_1988_b3_solution"
  sorry

end