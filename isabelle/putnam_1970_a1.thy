theory putnam_1970_a1 imports Complex_Main
"HOL-Analysis.Elementary_Metric_Spaces"
begin

theorem putnam_1970_a1:
  fixes a b :: real
  and f :: "real \<Rightarrow> real"
  and p :: "nat \<Rightarrow> real"
  and S :: "nat set"
  defines "f \<equiv> (\<lambda>x::real. exp (a*x) * cos (b*x))"
  assumes hp: "\<exists>a::real>0. (\<forall>x::real\<in>(ball 0 a). (\<Sum>n::nat. (p n)*x^n) = f x)"
  defines "S \<equiv> {n::nat. p n = 0}"
  shows "S = {} \<or> infinite S"
  sorry

end
