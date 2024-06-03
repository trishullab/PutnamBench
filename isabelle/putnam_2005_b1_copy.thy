theory putnam_2005_b1 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

(* there might be multiple possible correct answers *)
theorem putnam_2005_b1: 
  shows "( (monom (monom 1 0) 1 - 2*(monom (monom 1 1) 0)) * (monom (monom 1 0) 1 - 2*(monom (monom 1 1) 0) - 1) ) \<noteq> 0 \<and> (\<forall>a::real. poly (poly ( (monom (monom 1 0) 1 - 2*(monom (monom 1 1) 0)) * (monom (monom 1 0) 1 - 2*(monom (monom 1 1) 0) - 1) ) [:\<lfloor>2*a\<rfloor>:]) \<lfloor>a\<rfloor> = 0)"
  sorry

end
