theory putnam_2005_b1 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

(* there might be multiple possible correct answers *)
definition putnam_2005_b1_solution :: "real poly poly" where "putnam_2005_b1_solution \<equiv> undefined"
(* (monom 1 1 - 2*(monom (monom 1 1) 0)) * (monom 1 1 - 2*(monom (monom 1 1) 0) - 1) *)
theorem putnam_2005_b1: 
  shows "putnam_2005_b1_solution \<noteq> 0 \<and> (\<forall>a::real. poly (poly putnam_2005_b1_solution [:\<lfloor>2*a\<rfloor>:]) \<lfloor>a\<rfloor> = 0)"
  sorry

end
