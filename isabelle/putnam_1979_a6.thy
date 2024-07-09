theory putnam_1979_a6 imports
Complex_Main
begin

theorem putnam_1979_a6:
  fixes n :: nat
  and p :: "nat \<Rightarrow> real"
  assumes hp: "\<forall> i \<in> {1..n}. p i \<in> {0..1}"
  shows "\<exists> x \<in> {0..1}. (\<forall> i \<in> {1..n}. x \<noteq> p i) \<and> (\<Sum> i = 1..n. 1 / \<bar>x - p i\<bar>) \<le> 8 * n * (\<Sum> i = 1..n. 1 / (2 * i - 1))"
  sorry

end