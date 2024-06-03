theory putnam_1995_a2 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_1995_a2:
  fixes habconv :: "(real \<times> real) \<Rightarrow> bool"
  defines "habconv \<equiv> (\<lambda>(a::real,b::real). (\<exists>limit::real. filterlim (\<lambda>t::real. interval_lebesgue_integral lebesgue b t (\<lambda>x::real. sqrt (sqrt (x+a) - sqrt x) - sqrt (sqrt x - sqrt (x-b)))) (nhds limit) at_top))"
  shows "\<forall>ab::real\<times>real. habconv ab \<longleftrightarrow> ab \<in> ( {(a::real,b::real). a = b} )"
  sorry

end
