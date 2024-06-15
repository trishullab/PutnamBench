theory putnam_1963_b1 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1963_b1_solution::int where "putnam_1963_b1_solution \<equiv> undefined"
(* 2 *)
theorem putnam_1963_b1:
  shows "\<forall>a::int. ([: (real_of_int a), -1, 1 :] dvd ([: 90, 1 :] + monom 1 13)) \<longleftrightarrow> a = putnam_1963_b1_solution"
  sorry

end