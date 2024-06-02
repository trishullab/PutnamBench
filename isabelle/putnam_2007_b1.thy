theory putnam_2007_b1 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

(* Note: Since the coefficient is defined for all natural numbers, the condition here is modified to nonnegative which is what makes sense *)
theorem putnam_2007_b1:
  fixes f :: "int poly"
  and n :: int
  assumes hf: "\<forall>n'::nat. poly.coeff f n' \<ge> 0"
  and hfnconst: "\<exists>n'::nat. n' > 0 \<and> poly.coeff f n' > 0"
  and hn: "n > 0"
  shows "((poly f n) dvd (poly f (poly f n + 1))) \<longleftrightarrow> n = 1"
  sorry

end
