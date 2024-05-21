theory putnam_2001_b5 imports
Complex_Main
begin

theorem putnam_2001_b5:
  fixes a b :: real
  and g :: "real \<Rightarrow> real"
  assumes abint: "a \<in> {0 <..< 1 / 2} \<and> b \<in> {0 <..< 1 / 2}"
  and gcont: "continuous_on UNIV g"
  and hg : "\<forall> x :: real. g (g x) = a * g x + b * x"
  shows "\<exists> c :: real. \<forall> x :: real. g x = c * x"
  sorry

end