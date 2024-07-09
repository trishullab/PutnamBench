theory putnam_2015_a1 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Interval_Integral"
begin

theorem putnam_2015_a1:
  fixes hyperbola :: "(real^2) set"
  and A B :: "real^2"
  and P :: "real^2"
  and PPline :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> (real \<Rightarrow> real)"
  defines "hyperbola \<equiv> {p :: real^2. p$2 = 1 / p$1 \<and> p$1 > 0}"
  assumes hAB: "A \<in> hyperbola \<and> B \<in> hyperbola \<and> A$1 < B$1"
  and hP: "P \<in> hyperbola \<and> A$1 < P$1 \<and> P$1 < B$1 \<and> (\<forall> P' :: real^2. (P' \<in> hyperbola \<and> A$1 < P'$1 \<and> P'$1 < B$1) \<longrightarrow> emeasure lebesgue (convex hull {A, P', B}) \<le> emeasure lebesgue (convex hull {A, P, B}))"
  and hPPline: "\<forall> P1 P2 :: real^2. P1$1 \<noteq> P2$1 \<longrightarrow> PPline P1 P2 = (\<lambda> x :: real. (P2$2 - P1$2) / (P2$1 - P1$1) * (x - P1$1) + P1$2)"
  shows "interval_lebesgue_integral lebesgue (A$1) (P$1) (\<lambda> x. PPline A P x - 1 / x) = interval_lebesgue_integral lebesgue (P$1) (B$1) (\<lambda> x. PPline P B x - 1 / x)"
  sorry

end