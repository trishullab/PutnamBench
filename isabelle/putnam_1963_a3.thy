theory putnam_1963_a3 imports Complex_Main
"HOL-Analysis.Derivative"
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1963_a3_solution :: "(real \<Rightarrow> real) \<Rightarrow> nat \<Rightarrow> real \<Rightarrow> real \<Rightarrow> real" where
"putnam_1963_a3_solution \<equiv> undefined"
(*  \<lambda> (f :: real \<Rightarrow> real) (n :: nat) (x :: real) (t :: real). (x-t)^(n-1) * (f t) / (fact (n-1)) * t^n *)
theorem putnam_1963_a3:
  fixes P :: "nat \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real)"
    and n :: "nat"
    and f y :: "real \<Rightarrow> real"
  assumes hP : "(\<forall> x. P 0 x = x) \<and> (\<forall> (i :: nat) (y :: real \<Rightarrow> real). P (i + 1) y = P i (\<lambda> x. x * deriv y x - (real_of_nat i) * y x))"
    and hn : "0 < n"
    and hf : "continuous_on {1..} f"
  shows "((\<forall> k :: nat < n. 
           ((deriv^^k) y) C1_differentiable_on {1..} ∧
           ((deriv^^k) y) 1 = 0) \<and>
        (\<forall> x :: real. x \<ge> 0 \<longrightarrow> (P n y) x = f x)) \<longleftrightarrow>
        (\<forall> x :: real \<ge> 1. y x = interval_lebesgue_integral lebesgue 1 (ereal x) (putnam_1963_a3_solution f n x))"
  sorry

end