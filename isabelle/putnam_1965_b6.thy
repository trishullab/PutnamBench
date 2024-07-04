theory putnam_1965_b6 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Linear_Algebra"
begin

theorem putnam_1965_b6:
  fixes A B C D :: "real^2"
  and S :: "(real^2) set"
  and through :: "(real \<times> (real^2)) \<Rightarrow> real^2 \<Rightarrow> bool"
  defines "S \<equiv> {A, B, C, D}"
  and "through \<equiv> \<lambda> (r, P). \<lambda> Q. dist P Q = r"
  assumes hABCD: "\<forall> r s :: real. \<forall> P Q :: real^2. (r > 0 \<and> s > 0 \<and> through (r, P) A \<and> through (r, P) B \<and> through (s, Q) C \<and> through (s, Q) D) \<longrightarrow> (\<exists> I :: real^2. through (r, P) I \<and> through (s, Q) I)"
  shows "collinear S \<or> (\<exists> r :: real. \<exists> P :: real^2. r > 0 \<and> (\<forall> Q \<in> S. through (r, P) Q))"
  sorry

end