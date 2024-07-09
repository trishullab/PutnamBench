theory putnam_2014_b2 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

(* uses (real \<Rightarrow> real) instead of ({1..3} \<Rightarrow> real) *)
definition putnam_2014_b2_solution :: real where "putnam_2014_b2_solution \<equiv> undefined"
(* ln (4/3) *)
theorem putnam_2014_b2:
  fixes fbound :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  and finteq0 :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  and fint :: "(real \<Rightarrow> real) \<Rightarrow> real"
  defines "fbound \<equiv> (\<lambda>f::real\<Rightarrow>real. (\<forall>x::real\<in>{1..3}. -1 \<le> f x \<and> f x \<le> 1))"
  and "finteq0 \<equiv> (\<lambda>f::real\<Rightarrow>real. (interval_lebesgue_integral lebesgue 1 3 f) = 0)"
  and "fint \<equiv> (\<lambda>f::real\<Rightarrow>real. interval_lebesgue_integral lebesgue 1 3 (\<lambda>x::real. (f x)/x))"
  shows "(GREATEST ffint::real. (\<exists>f::real\<Rightarrow>real. fbound f \<and> finteq0 f \<and> ffint = fint f)) = putnam_2014_b2_solution"
  sorry

end
