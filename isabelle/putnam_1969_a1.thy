theory putnam_1969_a1 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1969_a1_solution :: "(real set) set" where
"putnam_1969_a1_solution \<equiv> undefined"
(* {S :: real set. \<exists> x :: real. S = {x} \<or> S = {x..} \<or> S = {..x} \<or> S = {x<..} \<or> S = {..<x}} \<union> {\<real>} *)
theorem putnam_1969_a1:
  shows "{S :: real set. (\<exists> f :: real poly poly. S = {z :: real. (\<exists> x y :: real. poly (poly f [:y:]) x = z)})} = putnam_1969_a1_solution"
  sorry

end