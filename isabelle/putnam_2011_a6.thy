theory putnam_2011_a6 imports
Complex_Main
"HOL-Library.Cardinality"
begin

theorem putnam_2011_a6:
  fixes n :: nat
  and gset :: "('g::ab_group_add) set"
  and k :: nat
  and mgprob :: "nat \<Rightarrow> 'g \<Rightarrow> real"
  defines "mgprob \<equiv> \<lambda> (m :: nat) (x :: 'g). card {l :: 'g list. length l = m \<and> set l \<subseteq> gset \<and> foldr plus l 0 = x} / k ^ m"
  assumes hn: "n = CARD('g) \<and> finite (UNIV :: 'g set)"
  and hk: "card gset = k"
  and hgsetprop: "k < n"
  and hgset0: "0 \<in> gset"
  and hgsetgen: "\<forall> x :: 'g. \<exists> l :: 'g list. set l \<subseteq> gset \<and> foldr plus l 0 = x"
  shows "\<exists> b \<in> {(0::real)..1}. \<exists> C > 0. (\<lambda> m :: nat. (1 / b powr (2 * real m)) * (\<Sum> x \<in> UNIV. mgprob m x - 1 / n) ^ 2) \<longlonglongrightarrow> C"
  sorry

end