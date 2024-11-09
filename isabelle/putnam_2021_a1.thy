theory putnam_2021_a1 imports Complex_Main
begin

definition putnam_2021_a1_solution :: nat where "putnam_2021_a1_solution \<equiv> undefined"
(* 578 *)
theorem putnam_2021_a1:
  fixes P :: "((int \<times> int) list) \<Rightarrow> bool"
  assumes P_def : "\<forall> l. (P l \<longleftrightarrow> successively (\<lambda> p q. (fst p - fst q) ^ 2 + (snd p - snd q) ^ 2 = 25) l)"
  shows "(LEAST k :: nat. \<exists> l. P ((0, 0) # l) \<and> last l = (2021, 2021) \<and> length l = k) = putnam_2021_a1_solution"
  sorry

end
