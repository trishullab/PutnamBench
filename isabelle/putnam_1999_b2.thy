theory putnam_1999_b2 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1999_b2:
  fixes P Q :: "complex poly"
  assumes hQ: "degree Q = 2"
  assumes hP: "\<forall> x :: complex. poly P x = poly Q x * poly ((pderiv^^2) P) x"
  shows "(\<exists> x1 x2 :: complex. x1 \<noteq> x2 \<and> poly P x1 = 0 \<and> poly P x2 = 0) \<longrightarrow> (\<exists> S :: complex set. card S = degree P \<and> (\<forall> z \<in> S. poly P z = 0))" 
  sorry

end