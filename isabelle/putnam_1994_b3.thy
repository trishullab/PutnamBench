theory putnam_1994_b3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_1994_b3_solution :: "real set" where "putnam_1994_b3_solution \<equiv> undefined"
(* {..<1} *)
theorem putnam_1994_b3:
  fixes k :: real
  and allfexN :: bool
  assumes hallfexN: "allfexN \<equiv> (\<forall>f::real\<Rightarrow>real. (((\<forall>x::real. f x > 0) \<and> f differentiable_on UNIV \<and> (\<forall>x::real. deriv f x > f x)) \<longrightarrow> (\<exists>N::real. \<forall>x::real>N. f x > exp (k*x))))"
  shows "allfexN \<longleftrightarrow> k \<in> putnam_1994_b3_solution"
  sorry

end
