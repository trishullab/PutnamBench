theory putnam_2016_b5 imports Complex_Main
begin

(* uses ((real \<Rightarrow> real) set) instead of (({1<..} \<Rightarrow> {1<..}) set) *)
theorem putnam_2016_b5:
  fixes f :: "real \<Rightarrow> real"
  and fle :: bool
  assumes hfle: "fle = (\<forall>x::real>1. \<forall>y::real>1. (x^2 \<le> y \<and> y \<le> x^3) \<longrightarrow> ((f x)^2 \<le> f y \<and> f y \<le> (f x)^3))"
  shows "fle \<longleftrightarrow> f \<in> ( {f::real\<Rightarrow>real. (\<exists>c::real. c > 0 \<and> (\<forall>x::real>1. f x = x powr c))} )"
  sorry

end
