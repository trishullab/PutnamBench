theory putnam_1992_b6 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1992_b6:
  fixes n :: nat
  and M :: "(real^'n^'n) set"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and h1: "mat 1 \<in> M"
  and h2: "\<forall>A\<in>M. \<forall>B\<in>M. (A**B \<in> M) \<noteq> (-A**B \<in> M)"
  and h3: "\<forall>A\<in>M. \<forall>B\<in>M. (A**B = B**A) \<or> (A**B = -B**A)"
  and h4: "\<forall>A\<in>M. (A \<noteq> mat 1 \<longrightarrow> (\<exists>B\<in>M. A**B = -B**A))"
  shows "card M \<le> n^2"
  sorry

end
