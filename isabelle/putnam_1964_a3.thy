theory putnam_1964_a3 imports Complex_Main
"HOL-Analysis.Abstract_Topology"
begin

theorem putnam_1964_a3:
  fixes x a b :: "nat \<Rightarrow> real"
  assumes hxdense: "range x \<subseteq> {0<..<1} \<and> euclideanreal closure_of (range x) \<supseteq> {0<..<1}"
  and hxinj: "inj x"
  defines "a \<equiv> (\<lambda>n::nat. x n - (GREATEST p::real. p = 0 \<or> (p < x n \<and> (\<exists>i::nat<n. p = x i))))"
  and "b \<equiv> (\<lambda>n::nat. (LEAST p::real. p = 1 \<or> (p > x n \<and> (\<exists>i::nat<n. p = x i))) - x n)"
  shows "(\<Sum>n::nat. a n * b n * (a n + b n)) = 1/3"
  sorry

end
