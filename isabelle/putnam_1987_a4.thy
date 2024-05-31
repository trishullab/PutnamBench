theory putnam_1987_a4 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1987_a4_solution::real where "putnam_1987_a4_solution \<equiv> undefined"
(* (5/3) * sqrt 30 *)
theorem putnam_1987_a4:
  fixes P::"complex poly poly poly" and F::"real\<Rightarrow>real\<Rightarrow>real" and a b c::complex
  assumes hPreal : "\<forall>i j k::nat. Im (coeff (coeff (coeff P k) j) i) = 0"
    and h : "\<forall>x y z u::real. (poly (poly (poly P [:[: u * z :]:]) [: u * y :]) (u * x)) = u^2 * F (y-x) (z-x)"
    and hPval1 : "(poly (poly (poly P [:[: 0 :] :]) [: 0 :]) 1) = 4"
    and hPval2 : "(poly (poly (poly P [:[: 0 :] :]) [: 1 :]) 0) = 5"
    and hPval3 : "(poly (poly (poly P [:[: 1 :] :]) [: 0 :]) 0) = 6"
    and hPabc : "(poly (poly (poly P [:[: c :] :]) [: b :]) a) = 0"
    and habs : "norm (b - a) = 10"
  shows "norm (c - a) = putnam_1987_a4_solution"
  sorry

end