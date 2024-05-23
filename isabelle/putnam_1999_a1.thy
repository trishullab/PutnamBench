theory putnam_1999_a1 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

(* Note: The actual problem asks to "find" such polynomials as well - but the solution does not give a set of all possible solutions *)
(* So we would need to do the analysis ourselves, the following formalization should work. *)
definition putnam_1999_a1_solution :: bool where "putnam_1999_a1_solution \<equiv> undefined"
(* True *)
theorem putnam_1999_a1:
  shows "putnam_1999_a1_solution \<longleftrightarrow> (\<exists> f g h :: real poly. \<forall> x :: real. \<bar>poly f x\<bar> - \<bar>poly g x\<bar> + poly h x = (if x < -1 then -1 else (if x \<le> 0 then 3 * x + 2 else -2 * x + 2)))"
  sorry

end