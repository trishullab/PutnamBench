theory putnam_2016_a1 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_2016_a1_solution :: nat where "putnam_2016_a1_solution \<equiv> undefined"
(* 8 *)
theorem putnam_2016_a1:
  shows "putnam_2016_a1_solution = (LEAST j :: nat. j > 0 \<and> (\<forall> P :: int poly. \<forall> k :: int. 2016 dvd poly ((pderiv ^^ j) P) k))"
  sorry

end