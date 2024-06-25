theory putnam_1966_a5 imports
Complex_Main
"HOL-Library.Extended_Real"
begin

theorem putnam_1966_a5:
  fixes C :: "(real \<Rightarrow> real) set"
    and T :: "(real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real)"
  defines "C \<equiv> {f :: real \<Rightarrow> real. continuous_on UNIV f}"
  assumes imageTC: "\<forall> f \<in> C. T f \<in> C"
    and linearT: "\<forall> a b :: real. \<forall> f \<in> C. \<forall> g \<in> C. T (\<lambda> x. a * f x + b * g x) = (\<lambda> x. a * T f x + b * T g x)"
    and localT: "\<forall> (r :: ereal) (s :: ereal). r < s \<longrightarrow> (\<forall> f \<in> C. \<forall> g \<in> C. (\<forall> x :: real. r < x \<and> x < s \<longrightarrow> f x = g x) \<longrightarrow> (\<forall> x :: real. r < x \<and> x < s \<longrightarrow> T f x = T g x))"
  shows "\<exists> f \<in> C. \<forall> g \<in> C. T g = (\<lambda> x. f x * g x)"
  sorry

end