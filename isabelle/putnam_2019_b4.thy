theory putnam_2019_b4 imports
Complex_Main
"HOL-Analysis.Derivative"
begin

(* note: boosts the domain of f to the entire 2D plane *)
definition putnam_2019_b4_solution :: real where "putnam_2019_b4_solution \<equiv> undefined"
(* 2 * ln 2 - 1 / 2 *)
theorem putnam_2019_b4:
  fixes f :: "real \<Rightarrow> real \<Rightarrow> real"
  and C1diff :: "(real \<Rightarrow> real \<Rightarrow> real) \<Rightarrow> bool"
  defines "C1diff \<equiv> \<lambda> h. (\<forall> x \<ge> 1. (h x) C1_differentiable_on {1..}) \<and> (\<forall> y \<ge> 1. (\<lambda> u. h u y) C1_differentiable_on {1..})"
  assumes fdiff: "C1diff f \<and> C1diff (\<lambda> x. deriv (f x)) \<and> C1diff (\<lambda> x y. deriv (\<lambda> u. f u y) x)"
  and feq1: "\<forall> x \<ge> 1. \<forall> y \<ge> 1. x * deriv (\<lambda> u. f u y) x + y * deriv (f x) y = x * y * ln (x * y)"
  and feq2: "\<forall> x \<ge> 1. \<forall> y \<ge> 1. x ^ 2 * deriv (deriv (\<lambda> u. f u y)) x + y ^ 2 * deriv (deriv (f x)) y = x * y"
  shows "(LEAST m. \<exists> s \<ge> 1. m = f (s + 1) (s + 1) - f (s + 1) s - f s (s + 1) + f s s) = putnam_2019_b4_solution"
  sorry

end
