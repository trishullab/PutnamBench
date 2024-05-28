theory putnam_1992_a4 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_1992_a4_solution :: "nat \<Rightarrow> real" where "putnam_1992_a4_solution \<equiv> undefined"
(* (\<lambda>k::nat. if (even k) then ((-1)^(nat \<lfloor>k/2\<rfloor>) * fact k) else 0) *)
theorem putnam_1992_a4:
  fixes f :: "real \<Rightarrow> real"
  assumes hfdiff: "\<forall>k::nat. ((deriv^^k) f) C1_differentiable_on UNIV"
  and hf: "\<forall>n::nat. (n > 0 \<longrightarrow> f (1/n) = n^2 / (n^2 + 1))"
  shows "\<forall>k::nat. (k > 0 \<longrightarrow> (deriv^^k) f 0 = putnam_1992_a4_solution k)"
  sorry

end
