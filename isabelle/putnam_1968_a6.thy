theory putnam_1968_a6 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1968_a6_solution :: "complex poly set" where "putnam_1968_a6_solution \<equiv> undefined"
(* {P :: complex poly. \<exists> l \<in> {[-1, 1], [1, 1], [-1, 1, 1], [-1, -1, 1], [-1, -1, 1, 1], [1, -1, -1, 1]}. P = Poly l \<or> P = -(Poly l)} *)
theorem putnam_1968_a6:
  shows "{P :: complex poly. degree P \<ge> 1 \<and> (\<forall> k \<in> {0 .. degree P}. coeff P k = 1 \<or> coeff P k = -1) 
          \<and> (\<forall> z :: complex. poly P z = 0 \<longrightarrow> (\<exists> r :: real. r = z))} = putnam_1968_a6_solution"
  sorry

end