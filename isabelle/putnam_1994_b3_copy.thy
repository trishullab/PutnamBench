theory putnam_1994_b3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1994_b3:
  fixes k :: real
  and allfexN :: bool
  assumes hallfexN: "allfexN \<equiv> (\<forall>f::real\<Rightarrow>real. (((\<forall>x::real. f x > 0) \<and> f differentiable_on UNIV \<and> (\<forall>x::real. deriv f x > f x)) \<longrightarrow> (\<exists>N::real. \<forall>x::real>N. f x > exp (k*x))))"
  shows "allfexN \<longleftrightarrow> k \<in> ( {..<1} )"
  sorry

end
