theory putnam_1988_a5 imports
Complex_Main
begin

theorem putnam_1988_a5:
  shows "\<exists> f :: real \<Rightarrow> real. (\<forall> x > 0. f (f x) = 6 * x - f x \<and> f x > 0) \<and> (\<forall> g :: real \<Rightarrow> real. (\<forall> x > 0. g (g x) = 6 * x - g x \<and> g x > 0) \<longrightarrow> (\<forall> x > 0. f x = g x))"
  sorry

end