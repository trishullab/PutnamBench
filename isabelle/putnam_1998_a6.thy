theory putnam_1998_a6 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1998_a6:
  fixes A B C :: "real^2"
  and threesquare :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> (real^2) \<Rightarrow> bool"
  assumes hint: "\<forall>i\<in>{1,2}. \<exists>a b c::int. A$i = a \<and> B$i = b \<and> C$i = c"
  and htriangle: "A \<noteq> B \<and> A \<noteq> C \<and> B \<noteq> C"
  and harea: "(dist A B + dist B C) ^ 2 < 8 * (measure lebesgue (convex hull {A, B, C})) + 1"
  assumes "threesquare \<equiv> (\<lambda>P Q R::real^2. dist Q P = dist Q R \<and> (P - Q) \<bullet> (R - Q) = 0)"
  shows "threesquare A B C \<or> threesquare B C A \<or> threesquare C A B"
  sorry

end
