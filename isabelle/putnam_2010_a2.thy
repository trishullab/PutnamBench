theory putnam_2010_a2 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_2010_a2_solution :: "(real \<Rightarrow> real) set" where "putnam_2010_a2_solution \<equiv> undefined"
(* {f::real\<Rightarrow>real. (\<exists>c d::real. \<forall>x::real. f x = c*x + d)} *)
theorem putnam_2010_a2:
  shows "{f::real\<Rightarrow>real. f differentiable_on UNIV \<and>
  (\<forall>(x::real)(n::nat). (n > 0 \<longrightarrow> deriv f x = (f (x + n) - f x)/n))} = putnam_2010_a2_solution"
  sorry

end
