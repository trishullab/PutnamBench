theory putnam_2008_b5 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2008_b5:
  fixes fqsat :: "(real \<Rightarrow> real) \<Rightarrow> rat \<Rightarrow> bool"
  and fsat :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  defines "fqsat \<equiv> (\<lambda>(f::real\<Rightarrow>real)(q::rat). f C1_differentiable_on UNIV \<and> (\<exists>p::rat. p = f (real_of_rat q) \<and> snd (quotient_of p) = snd (quotient_of q)))"
  and "fsat \<equiv> (\<lambda>f::real\<Rightarrow>real. (\<forall>q::rat. fqsat f q))"
  shows "\<forall>f::real\<Rightarrow>real. (fsat f \<longleftrightarrow> f \<in> ( {f::real\<Rightarrow>real. (\<exists>n::int. f = (\<lambda>x::real. x + n))} \<union> {f::real\<Rightarrow>real. (\<exists>n::int. f = (\<lambda>x::real. -x + n))} ))"
  sorry

end
