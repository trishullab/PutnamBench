theory putnam_2017_b1 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_2017_b1:
  fixes lines :: "(real^2) set set"
  and L1 L2 :: "(real^2) set"
  defines "lines \<equiv> {L :: (real^2) set. \<exists> v w :: real^2. w \<noteq> 0 \<and> L = {p :: real^2. \<exists> t :: real. p = v + t *s w}}"
  assumes L1L2lines: "L1 \<in> lines \<and> L2 \<in> lines"
  and L1L2distinct: "L1 \<noteq> L2"
  shows "(L1 \<inter> L2 \<noteq> {}) \<longleftrightarrow> (\<forall> (lambda :: real) \<noteq> 0. \<forall> P :: real^2. (P \<notin> L1 \<and> P \<notin> L2) \<longrightarrow> (\<exists> A1 A2 :: real^2. A1 \<in> L1 \<and> A2 \<in> L2 \<and> A2 - P = lambda *s (A1 - P)))"
  sorry

end