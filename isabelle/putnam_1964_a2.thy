theory putnam_1964_a2 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

(* uses (real \<Rightarrow> real) instead of ({0..1} \<Rightarrow> real) *)
definition putnam_1964_a2_solution :: "real \<Rightarrow> ((real \<Rightarrow> real) set)" where "putnam_1964_a2_solution \<equiv> undefined"
(* (\<lambda>_::real. {}) *)
theorem putnam_1964_a2:
  fixes \<alpha> :: real
  shows "putnam_1964_a2_solution \<alpha> = {f::real\<Rightarrow>real. (\<forall>x::real\<in>{0..1}. f x > 0) \<and> continuous_on {0..1} f \<and> (interval_lebesgue_integral lebesgue 0 1 f) = 1 \<and> (interval_lebesgue_integral lebesgue 0 1 (\<lambda>x::real. x * f x)) = \<alpha> \<and> (interval_lebesgue_integral lebesgue 0 1 (\<lambda>x::real. x^2 * f x)) = \<alpha>^2}"
  sorry

end
