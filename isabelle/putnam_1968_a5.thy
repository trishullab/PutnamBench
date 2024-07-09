theory putnam_1968_a5 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1968_a5_solution :: real where "putnam_1968_a5_solution \<equiv> undefined"
(* 8 *)
theorem putnam_1968_a5:
  fixes V :: "real poly set"
  defines "V \<equiv> {P :: real poly. degree P = 2 \<and> (\<forall> x \<in> {0..1}. \<bar>poly P x\<bar> \<le> 1)}"
  shows "Sup {y :: real. \<exists> P \<in> V. \<bar>poly (pderiv p) 0\<bar> = y} = putnam_1968_a5_solution"
  sorry

end