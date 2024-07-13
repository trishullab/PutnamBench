theory putnam_1972_b4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1972_b4:
  fixes n :: nat
  assumes hn: "n > 1"
  shows "\<exists>P::int poly poly poly. \<forall>x::int. x = poly (poly (poly P (monom (monom (x + x^(n+2)) 0) 0)) (monom (x^(n+1)) 0)) (x^n)"
  sorry

end
