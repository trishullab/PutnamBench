theory putnam_2022_b6 imports Complex_Main
begin

(* uses (real \<Rightarrow> real) instead of ({0<..} \<Rightarrow> {0<..}) *)
theorem putnam_2022_b6:
  fixes f :: "real \<Rightarrow> real"
  and eq :: bool
  assumes heq: "eq = (\<forall>x::real>0. \<forall>y::real>0. f (x*f y) + f (y*f x) = 1 + f (x+y))"
  shows "(continuous_on {0<..} f \<and> eq) \<longleftrightarrow> f \<in> ( {f::real\<Rightarrow>real. (\<exists>c::real. c \<ge> 0 \<and> (\<forall>x::real>0. f x = 1/(1+c*x)))} )"
  sorry

end
