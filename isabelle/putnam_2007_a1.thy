theory putnam_2007_a1 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* Note: Modified definition of tangent to handle this, but this is a bit of cheating - You would have to know that this works *)
definition putnam_2007_a1_solution :: "real set" where "putnam_2007_a1_solution \<equiv> undefined"
(* {2/3, 3/2, (13 + sqrt 601)/12, (13 - sqrt 601)/12} *)
definition reflect_tangent :: "(real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool" where "reflect_tangent \<equiv> (\<lambda>f g::real\<Rightarrow>real. f C1_differentiable_on UNIV \<and> g C1_differentiable_on UNIV \<and> (\<exists>x y::real. f x = y \<and> g y = x \<and> deriv f x = 1 / deriv g y))"
theorem putnam_2007_a1:
  shows "\<forall>a::real. (reflect_tangent (\<lambda>x::real. a*x^2 + a*x + 1/24) (\<lambda>y::real. a*y^2 + a*y + 1/24) \<longleftrightarrow> a \<in> putnam_2007_a1_solution)"
  sorry

end
