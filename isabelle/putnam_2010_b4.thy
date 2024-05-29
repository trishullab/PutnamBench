theory putnam_2010_b4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"

begin

definition putnam_2010_b4_solution :: "(real poly \<times> real poly) set" where
"putnam_2010_b4_solution \<equiv> undefined"
(* {w :: real poly \<times> real poly.  degree (fst w) \<le> 1 \<and> degree (snd w) \<le> 1 \<and> (coeff (fst w) 0) * (coeff (snd w) 1) - (coeff (snd w) 0) * (coeff (fst w) 1) = 1} *)
theorem putnam_2010_b4:
  fixes p q :: "real poly"
  shows "(p, q) \<in> putnam_2010_b4_solution \<longleftrightarrow> (\<forall> x :: real. (poly p x) * (poly q (x + 1)) - (poly p (x+1)) * (poly q x) = 1)"
  sorry

end