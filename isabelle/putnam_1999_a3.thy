theory putnam_1999_a3 imports
Complex_Main
"HOL-Analysis.Elementary_Metric_Spaces"
begin

theorem putnam_1999_a3:
  fixes f :: "real \<Rightarrow> real"
  and a :: "nat \<Rightarrow> real"
  defines "f \<equiv> \<lambda> x. 1 / (1 - 2 * x - x ^ 2)"
  assumes hf: "\<exists> \<epsilon> > 0. \<forall> x \<in> ball 0 \<epsilon>. (\<Sum> n :: nat. (a n) * x ^ n) = f x"
  shows "\<forall> n :: nat. \<exists> m :: nat. (a n) ^ 2 + (a (n + 1)) ^ 2 = a m"
  sorry

end

