theory putnam_2009_b2 imports Complex_Main
begin

definition putnam_2009_b2_solution :: "real set" where
"putnam_2009_b2_solution \<equiv> undefined"
(* {(1/(real 3))<..1} *)
theorem putnam_2009_b2:
  shows "{c :: real. (\<exists> s :: nat \<Rightarrow> real. s 0 = 0 \<and> strict_mono s \<and> (\<exists> n :: nat. (s n = 1 \<and> (\<Sum> i \<in> {0..n-1}. (s (i + 1))^3 - (s i) * (s (i + 1))^2) = c)))} = putnam_2009_b2_solution"  
  sorry

end