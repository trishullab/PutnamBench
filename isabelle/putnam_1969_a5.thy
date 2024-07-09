theory putnam_1969_a5 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1969_a5:
  shows "\<forall> x y :: real \<Rightarrow> real. (x differentiable_on UNIV \<and> y differentiable_on UNIV) \<longrightarrow> (\<forall> t > 0. (x 0 = y 0 \<longleftrightarrow> (\<exists> u :: real \<Rightarrow> real. continuous_on UNIV u \<and> x t = 0 \<and> y t = 0 \<and>
    deriv x = (\<lambda> p :: real \<Rightarrow> -2 * y p + u p) \<and> deriv y = (\<lambda> p :: real \<Rightarrow> -2 * x p + u p))))"
  sorry

end