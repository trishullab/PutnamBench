theory putnam_1977_a6 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1977_a6:
  fixes X::"(real \<times> real) set" and room::"real\<Rightarrow>real\<Rightarrow>real"
  defines "X \<equiv> {(x, y). 0 \<le> x \<and> x \<le> 1 \<and> 0 \<le> y \<and> y \<le> 1}"
    and "room \<equiv> \<lambda>x. \<lambda>y. min (min x (1 - x)) (min y (1 - y))"
  shows "(\<forall>f. continuous_on UNIV f \<longrightarrow> (\<forall>(x, y) \<in> X. (set_lebesgue_integral lebesgue
    {(a, b). a \<ge> x - (room x y) \<and> a \<le> x + (room x y) \<and> b \<ge> y - (room x y) \<and> b \<le> y + (room x y)} f ) = 0) \<longrightarrow> (\<forall>(x, y) \<in> X. f (x, y) = 0))
    \<longleftrightarrow> ( True )"
  sorry

end