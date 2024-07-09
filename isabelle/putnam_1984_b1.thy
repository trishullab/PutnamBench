theory putnam_1984_b1 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1984_b1_solution :: "(real poly) \<times> (real poly)" where "putnam_1984_b1_solution \<equiv> undefined"
(* (monom 1 1 + monom 3 0, monom (-1) 1 + monom (-2) 0) *)
theorem putnam_1984_b1:
  fixes f :: "nat \<Rightarrow> nat"
  assumes hf : "\<forall> n > 0. f n = (\<Sum> i=1..n. (fact i))"
  shows "let (P, Q) = putnam_1984_b1_solution in \<forall> n \<ge> 1. f (n + 2) = (poly P n) * (f (n + 1)) + (poly Q n) * (f n)"
  sorry

end