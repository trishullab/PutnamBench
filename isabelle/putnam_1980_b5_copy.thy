theory putnam_1980_b5 imports
Complex_Main
begin

theorem putnam_1980_b5:
  fixes T :: "real set"
  and P :: "real \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and Convex :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  and S :: "real \<Rightarrow> (real \<Rightarrow> real) set"
  defines "T \<equiv> {0..1}"
  and "P \<equiv> \<lambda> (t :: real) (f :: real \<Rightarrow> real). f 1 - 2 * f (2 / 3) + f (1 / 3) \<ge> t * (f (2 / 3) - 2 * f (1 / 3) + f 0)"
  and "Convex \<equiv> \<lambda> f :: real \<Rightarrow> real. \<forall> u \<in> T. \<forall> v \<in> T. \<forall> s \<in> T. f (s * u + (1 - s) * v) \<le> s * (f u) + (1 - s) * (f v)"
  and "S \<equiv> \<lambda> t :: real. {f :: real \<Rightarrow> real. (\<forall> x \<in> T. f x \<ge> 0) \<and> strict_mono_on T f \<and> Convex f \<and> continuous_on T f \<and> P t f}"
  shows "\<forall> t :: real. t \<ge> 0 \<longrightarrow> ((\<forall> f \<in> S t. \<forall> g \<in> S t. (\<lambda> x. f x * g x) \<in> S t) \<longleftrightarrow> ( \<lambda> t :: real. 1 \<ge> t ) t)"
  sorry

end