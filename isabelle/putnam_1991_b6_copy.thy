theory putnam_1991_b6 imports
Complex_Main
begin

theorem putnam_1991_b6:
  fixes a b :: real
  and cle :: "real \<Rightarrow> bool"
  defines "cle \<equiv> \<lambda> c :: real. \<forall> u :: real. (0 < \<bar>u\<bar> \<and> \<bar>u\<bar> \<le> c) \<longrightarrow> (\<forall> x \<in> {0 <..< 1}. a powr x * b powr (1 - x) \<le> a * (sinh (u * x) / sinh u) + b * (sinh (u * (1 - x)) / sinh u))"
  assumes abpos: "a > 0 \<and> b > 0"
  shows "(GREATEST c. cle c) = ( \<lambda> a b :: real. \<bar>ln (a / b)\<bar> ) a b"
  sorry

end