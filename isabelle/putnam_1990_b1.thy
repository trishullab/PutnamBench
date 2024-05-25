theory putnam_1990_b1 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

definition putnam_1990_b1_solution::"(real\<Rightarrow>real) set" where "putnam_1990_b1_solution \<equiv> undefined"
(*  { (\<lambda>x. (sqrt 1990) * exp x), (\<lambda>x. - (sqrt 1990) * exp x)} *)
theorem putnam_1990_b1:
  fixes f f'::"real\<Rightarrow>real"
  assumes fderiv : "\<forall>x::real. (f has_derivative f') (nhds x)"
  shows "((\<forall>x::real. (f x)^2 = (interval_lebesgue_integral lebesgue 0 x (\<lambda>t. (f t)^2 + (f' t)^2)) + 1990) \<and> continuous_on UNIV f')
    \<longleftrightarrow> f \<in> putnam_1990_b1_solution"
  sorry

end