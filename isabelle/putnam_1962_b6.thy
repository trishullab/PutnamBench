theory putnam_1962_b6 imports Complex_Main
begin

theorem putnam_1962_b6:
  fixes n :: "nat"
    and a b :: "nat \<Rightarrow> real"
    and xs :: "real set"
    and f :: "real \<Rightarrow> real"
  defines "f \<equiv> \<lambda> x :: real. \<Sum> k \<in> {0..n}. ((a k) * sin (k * x) + (b k) * cos (k * x))"
  assumes hf1 : "\<forall> x \<in> {0..2*\<pi>}. abs (f x) \<le> 1"
    and hxs : "card xs = 2 * n \<and> xs \<subseteq> {0..<2*\<pi>}"
    and hfxs : "\<forall> x \<in> xs. abs (f x) = 1"
  shows "(\<not>(\<exists> c :: real. f = (\<lambda> x :: real. c))) \<longrightarrow> (\<exists> a :: real. f = (\<lambda> x :: real. cos (n * x + a)))"
  sorry

end