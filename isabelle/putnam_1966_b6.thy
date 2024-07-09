theory putnam_1966_b6 imports
Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1966_b6:
  fixes y :: "real \<Rightarrow> real"
  assumes hy: "y differentiable_on UNIV \<and> (deriv y) differentiable_on UNIV"
  and diffeq: "\<forall> x :: real. (deriv (deriv y)) x + (exp x) * (y x) = 0"
  shows "\<exists> r s N :: real. \<forall> x > N. r \<le> y x \<and> y x \<le> s"
  sorry

end