theory putnam_2005_b3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* uses (real \<Rightarrow> real) instead of ({0<..} \<Rightarrow> {0<..}) *)
theorem putnam_2005_b3:
  fixes f :: "real \<Rightarrow> real"
  and fexa :: bool
  assumes hfexa: "fexa \<equiv> (\<exists>a::real>0. \<forall>x::real>0. deriv f (a/x) = x / f x)"
  shows "(f differentiable_on {0<..} \<and> fexa) \<longleftrightarrow> f \<in> ( {f::real\<Rightarrow>real. (\<exists>c d::real. c > 0 \<and> d > 0 \<and> (d = 1 \<longrightarrow> c = 1) \<and> (\<forall>x::real\<in>{0<..}. f x = c * x powr d))} )"
  sorry

end
