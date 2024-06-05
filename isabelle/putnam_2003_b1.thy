theory putnam_2003_b1 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_2003_b1_solution :: bool where "putnam_2003_b1_solution \<equiv> undefined"
(* False *)
theorem putnam_2003_b1:
  shows "(\<exists>a b c d::real poly. (\<forall>x y::real. 1 + x*y + x^2*y^2 = poly a x * poly c y + poly b x * poly d y)) \<longleftrightarrow> putnam_2003_b1_solution"
  sorry

end
