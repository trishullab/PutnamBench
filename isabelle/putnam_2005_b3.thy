theory putnam_2005_b3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* uses (real \<Rightarrow> real) instead of ({0<..} \<Rightarrow> {0<..}) *)
definition putnam_2005_b3_solution :: "(real \<Rightarrow> real) set" where "putnam_2005_b3_solution \<equiv> undefined"
(* {f::real\<Rightarrow>real. (\<exists>c d::real. c > 0 \<and> d > 0 \<and> (d = 1 \<longrightarrow> c = 1) \<and> (\<forall>x::real\<in>{0<..}. f x = c * x powr d))} *)
theorem putnam_2005_b3:
  fixes f :: "real \<Rightarrow> real"
  assumes hf : "\<forall> x :: real. 0 < f x"
    and hf' : "f differentiable_on {0<..}"
  shows "(\<exists>a::real>0. \<forall>x::real>0. deriv f (a/x) = x / f x) \<longleftrightarrow> f \<in> putnam_2005_b3_solution"
  sorry

end
