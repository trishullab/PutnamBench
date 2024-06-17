theory putnam_1963_b3 imports Complex_Main "HOL-Analysis.Derivative"
begin

definition putnam_1963_b3_solution::"(real\<Rightarrow>real) set" where "putnam_1963_b3_solution \<equiv> undefined"
(* { f. \<exists>A k::real. f = (\<lambda>x. A * sinh (k * x)) } \<union> { f. \<exists>A::real. f = (\<lambda>x. A * x) } \<union> { f. \<exists>A k::real. f = (\<lambda>x. A * sin (k * x)) } *)
theorem putnam_1963_b3:
  fixes f::"real\<Rightarrow>real"
  assumes fdiff : "f C1_differentiable_on UNIV \<and> (deriv f) differentiable_on UNIV"
  shows "(\<forall>x y::real. (f x)^2 - (f y)^2 = f (x+y) * f (x-y)) \<longleftrightarrow> f \<in> putnam_1963_b3_solution"
  sorry

end