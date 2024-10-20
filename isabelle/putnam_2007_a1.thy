theory putnam_2007_a1 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* Note: Modified definition of tangent to handle this, but this is a bit of cheating - You would have to know that this works *)
definition putnam_2007_a1_solution :: "real set" where "putnam_2007_a1_solution \<equiv> undefined"
(* {2/3, 3/2, (13 + sqrt 601)/12, (13 - sqrt 601)/12} *)
theorem putnam_2007_a1:
  fixes P :: "(real \<Rightarrow> real) \<Rightarrow> bool"
    and a :: "real"
  assumes P_def : "\<forall> f :: real \<Rightarrow> real. (P f \<longleftrightarrow> (\<exists> x y. f x = y \<and> f y = x \<and> deriv f x * deriv f y = 1))"
  shows "P (\<lambda> t :: real. a * t ^ 2 + a * t + 1 / 24) \<longleftrightarrow> a \<in> putnam_2007_a1_solution"
  sorry

end
