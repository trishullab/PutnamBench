theory putnam_1979_b5 imports
Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1979_b5:
  fixes C :: "(real \<times> real) set"
  assumes hC: "closed C \<and> convex C \<and> (0,0) \<in> C"
  and nCnint: "\<forall> a b :: int. (a \<noteq> 0 \<or> b \<noteq> 0) \<longrightarrow> (real_of_int a, real_of_int b) \<notin> C"
  and hCeven: "emeasure lebesgue (C \<inter> {p :: real \<times> real. fst p \<ge> 0 \<and> snd p \<ge> 0}) = emeasure lebesgue (C \<inter> {p :: real \<times> real. fst p \<ge> 0 \<and> snd p \<le> 0}) \<and> emeasure lebesgue (C \<inter> {p :: real \<times> real. fst p \<ge> 0 \<and> snd p \<le> 0}) = emeasure lebesgue (C \<inter> {p :: real \<times> real. fst p \<le> 0 \<and> snd p \<ge> 0}) \<and> emeasure lebesgue (C \<inter> {p :: real \<times> real. fst p \<le> 0 \<and> snd p \<ge> 0}) = emeasure lebesgue (C \<inter> {p :: real \<times> real. fst p \<le> 0 \<and> snd p \<le> 0})"
  shows "emeasure lebesgue C \<le> 4"                     
  sorry

end