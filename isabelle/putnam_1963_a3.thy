theory putnam_1963_a3 imports Complex_Main
"HOL-Analysis.Derivative"
"HOL-Analysis.Interval_Integral"
begin

definition putnam_1963_a3_solution :: "(real \<Rightarrow> real) \<Rightarrow> nat \<Rightarrow> real \<Rightarrow> real \<Rightarrow> real" where
"putnam_1963_a3_solution \<equiv> undefined"
(*  \<lambda> (f :: real \<Rightarrow> real) (n :: nat) (x :: real) (t :: real). (x-t)^(n-1) * (f t) / (fact (n-1)) * t^n *)
theorem putnam_1963_a3:
  fixes n :: "nat"
    and f :: "real \<Rightarrow> real"
    and P :: "nat \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real)"
    and delta :: "(real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real)"
    and D :: "nat \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real)"
    and y :: "real \<Rightarrow> real"
  defines "delta \<equiv> \<lambda> g. ((\<lambda> x :: real. x * deriv g x))"
    and "D \<equiv> \<lambda> m :: nat. \<lambda> g :: real \<Rightarrow> real. (\<lambda> x :: real. (delta g) x - (real m) * (g x))"
    and "y \<equiv> \<lambda> x :: real. interval_lebesgue_integral lebesgue 1 (ereal x) (putnam_1963_a3_solution f n x)"
  assumes hn : "n \<ge> 1"
    and hf : "continuous_on UNIV f"
    and hP : "P 0 y = y \<and> (\<forall> m \<in> {0::nat..<n}. P (m + 1) y = D (n - 1 - m) (P m y))"
  shows "(\<forall> k :: nat < n. ((deriv^^k) f) C1_differentiable_on UNIV) \<and> (\<forall> x :: real \<ge> 1. P n y x = f x) \<and> (\<forall> i \<in> {0::nat..<n}. ((deriv^^i) y) 1 = 0)"
  sorry

end