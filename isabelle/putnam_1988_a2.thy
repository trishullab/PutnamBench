theory putnam_1988_a2 imports
Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_1988_a2_solution :: bool where "putnam_1988_a2_solution \<equiv> undefined"
(* True *)
theorem putnam_1988_a2:
  fixes f :: "real \<Rightarrow> real"
  defines "f \<equiv> \<lambda> x. exp (x ^ 2)"
  shows "(\<exists> a b :: real. a < b \<and> (\<exists> g :: real \<Rightarrow> real. (\<exists> x \<in> {a<..<b}. g x \<noteq> 0) \<and> g differentiable_on {a<..<b} \<and> (\<forall> x \<in> {a<..<b}. deriv (\<lambda> y. f y * g y) x = (deriv f x) * (deriv g x)))) \<longleftrightarrow> putnam_1988_a2_solution"
  sorry

end