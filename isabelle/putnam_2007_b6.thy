theory putnam_2007_b6 imports Complex_Main
"HOL-Library.Multiset"
begin

theorem putnam_2007_b6:
  fixes f :: "nat \<Rightarrow> nat"
  defines "f \<equiv> \<lambda> n :: nat. card {M :: nat multiset. sum_mset M = fact n \<and> (\<forall> m \<in># M. \<exists> k \<in> {1::nat..n}. m = fact k)}"
  shows "\<exists> C :: real. \<forall> n :: nat. (n \<ge> 2 \<longrightarrow> ((n powr (n^2/2 - C *n)) * exp (-(n^2)/4) \<le> f n \<and> f n \<le> (n powr (n^2/2 + C * n)) * exp (-(n^2)/4)))"
  sorry

end