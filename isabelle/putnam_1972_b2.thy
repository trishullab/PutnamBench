theory putnam_1972_b2 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_1972_b2_solution :: "real \<Rightarrow> real \<Rightarrow> real" where
"putnam_1972_b2_solution \<equiv> undefined"
(* \<lambda> s :: real. \<lambda> v :: real \<Rightarrow> 2 * s / v *)
theorem putnam_1972_b2:
  fixes s v :: "real"
    and valid :: "real \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  defines "valid \<equiv> \<lambda> t :: real. \<lambda> x :: real \<Rightarrow> real. x differentiable_on {0::real..t} \<and> (deriv x) differentiable_on {0::real..t}
            \<and> antimono_on {0::real..t} (deriv (deriv x)) \<and> deriv x 0 = 0 \<and> deriv x t = v \<and> x t - x 0 = s"
  assumes hs : "s > 0"
    and hv : "v > 0"
  shows "(\<exists> x :: real \<Rightarrow> real. valid (putnam_1972_b2_solution s v) x) \<and> (\<forall> t :: real > putnam_1972_b2_solution s v. \<not>(\<exists> x :: real \<Rightarrow> real. valid t x))"
  sorry

end