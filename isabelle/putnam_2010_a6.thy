theory putnam_2010_a6 imports Complex_Main
"HOL-Analysis.Interval_Integral"
begin

(* uses (real \<Rightarrow> real) instead of ({0..} \<Rightarrow> real) *)
theorem putnam_2010_a6:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "strict_antimono_on {0..} f \<and> continuous_on {0..} f \<and> filterlim f (nhds 0) at_top"
  shows "\<not>(\<exists>y::real. filterlim (\<lambda>z::real. interval_lebesgue_integral lebesgue 0 z (\<lambda>x::real. ((f x) - f (x + 1))/(f x))) (nhds y) at_top)"
  sorry

end
