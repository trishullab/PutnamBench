theory putnam_1970_b5 imports Complex_Main
begin

theorem putnam_1970_b5:
  fixes ramp :: "int \<Rightarrow> (real \<Rightarrow> real)"
  and F :: "real \<Rightarrow> real"
  defines "ramp \<equiv> (\<lambda>n::int. (\<lambda>x::real. if x \<le> -n then -n else if (-n < x \<and> x \<le> n) then x else n))"
  shows "continuous_on UNIV F \<longleftrightarrow> (\<forall>n::nat. continuous_on UNIV ((ramp n) \<circ> F))"
  sorry

end
