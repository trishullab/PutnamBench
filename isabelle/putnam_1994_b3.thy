theory putnam_1994_b3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_1994_b3_solution :: "real set" where "putnam_1994_b3_solution \<equiv> undefined"
(* {..<1} *)
theorem putnam_1994_b3:
  shows "{k :: real. (\<forall> f::real\<Rightarrow>real. ((\<forall> x. 0 < f x \<and> f x < deriv f x) \<and> f differentiable_on UNIV) \<longrightarrow>
    (\<exists> N::real. \<forall> x::real>N. f x > exp (k * x)))} = putnam_1994_b3_solution"
  sorry

end
