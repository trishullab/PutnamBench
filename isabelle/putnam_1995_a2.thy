theory putnam_1995_a2 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1995_a2_solution :: "(real \<times> real) set" where "putnam_1995_a2_solution \<equiv> undefined"
(* {(a::real,b::real). a = b} *)
theorem putnam_1995_a2:
  fixes habconv :: "(real \<times> real) \<Rightarrow> bool"
  defines "habconv \<equiv> (\<lambda>(a::real,b::real). (\<exists>limit::real. filterlim (\<lambda>t::real. interval_lebesgue_integral lebesgue b t (\<lambda>x::real. sqrt (sqrt (x+a) - sqrt x) - sqrt (sqrt x - sqrt (x-b)))) (nhds limit) at_top))"
  shows "\<forall>ab::real\<times>real. fst ab > 0 \<and> snd ab > 0 \<longrightarrow> (habconv ab \<longleftrightarrow> ab \<in> putnam_1995_a2_solution)"
  sorry

end
