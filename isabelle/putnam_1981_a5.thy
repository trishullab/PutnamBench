theory putnam_1981_a5 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1981_a5_solution::bool where "putnam_1981_a5_solution \<equiv> undefined"
(* True *)
theorem putnam_1981_a5:
  fixes Q::"(real poly) \<Rightarrow> (real poly)" and n::"(real poly) \<Rightarrow> real"
  defines "Q \<equiv> \<lambda>P. [: 1, 0, 1 :] * P * (pderiv P) + [: 0, 1 :] * (P^2 + (pderiv P)^2)"
    and "n \<equiv> \<lambda>P. card {x::real. x > 1 \<and> (poly P x) = 0}"
  shows "(\<forall>P. card {x::real. poly (Q P) x = 0} \<ge> 2 * (n P) - 1) \<longleftrightarrow> putnam_1981_a5_solution"
  sorry

end