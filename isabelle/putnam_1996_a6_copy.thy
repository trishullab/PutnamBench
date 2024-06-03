theory putnam_1996_a6 imports
Complex_Main
begin

theorem putnam_1996_a6:
  fixes c :: real
  and f :: "real \<Rightarrow> real"
  assumes cgt0: "c > 0"
  shows "(continuous_on UNIV f \<and> (\<forall> x :: real. f x = f (x ^ 2 + c))) \<longleftrightarrow> f \<in> ( \<lambda> c :: real. if c \<le> 1 / 4 then {f :: real \<Rightarrow> real. \<exists> d :: real. \<forall> x :: real. f x = d} else {f :: real \<Rightarrow> real. continuous_on {0..c} f \<and> f 0 = f c \<and> (\<forall> x > 0. f x = f (x ^ 2 + c)) \<and> (\<forall> x < 0. f x = f (-x))} ) c"
  sorry

end