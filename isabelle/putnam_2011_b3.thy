theory putnam_2011_b3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_2011_b3_solution :: bool where "putnam_2011_b3_solution \<equiv> undefined"
(* True *)
theorem putnam_2011_b3:
  shows "(\<forall>f g::real\<Rightarrow>real. g 0 \<noteq> 0 \<longrightarrow> continuous_on {0} g \<longrightarrow> (\<lambda>x::real. f x*g x) differentiable_on {0} \<longrightarrow> (\<lambda>x::real. f x/g x) differentiable_on {0} \<longrightarrow> f differentiable_on {0}) \<longleftrightarrow> putnam_2011_b3_solution"
  sorry

end
