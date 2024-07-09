theory putnam_2007_b4 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_2007_b4_solution :: "nat \<Rightarrow> nat" where "putnam_2007_b4_solution \<equiv> undefined"
(* \<lambda> n. 2 ^ (n + 1) *)
theorem putnam_2007_b4:
  fixes n :: nat
  assumes npos: "n > 0"
  shows "card {(P :: real poly, Q :: real poly). P ^ 2 + Q ^ 2 = (monom 1 (2 * n)) + 1 \<and> degree P > degree Q} = putnam_2007_b4_solution n"
  sorry

end