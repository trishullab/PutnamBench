theory putnam_2010_b5 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_2010_b5_solution :: bool where "putnam_2010_b5_solution \<equiv> undefined"
(* False *)
theorem putnam_2010_b5:
  shows "(\<exists>f::real\<Rightarrow>real. strict_mono_on UNIV f \<and> f differentiable_on UNIV \<and> (\<forall>x::real. deriv f x = f (f x))) \<longleftrightarrow> putnam_2010_b5_solution"
  sorry

end
