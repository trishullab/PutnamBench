theory putnam_2021_b5 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Combinatorics.Permutations"
begin

theorem putnam_2021_b5:
  fixes n :: nat
  and matpow :: "int^'n^'n \<Rightarrow> nat \<Rightarrow> int^'n^'n"
  and subdet :: "int^'n^'n \<Rightarrow> 'n set \<Rightarrow> int"
  and veryodd :: "int^'n^'n \<Rightarrow> bool"
  defines "subdet \<equiv> \<lambda> (A :: int^'n^'n) (S :: 'n set). sum (\<lambda> p. sign p * prod (\<lambda> i. A$i$(p i)) S) {p. p permutes S}"
  and "veryodd \<equiv> \<lambda> A :: int^'n^'n. \<forall> S :: 'n set. S \<noteq> {} \<longrightarrow> odd (subdet A S)"
  assumes npos: "n \<ge> 1"
  and ncard: "CARD('n) = n"
  and hmatpow: "\<forall> A :: int^'n^'n. matpow A 0 = mat 1 \<and> (\<forall> k :: nat. matpow A (k + 1) = matpow A k ** A)"
  shows "\<forall> A :: int^'n^'n. veryodd A \<longrightarrow> (\<forall> k \<ge> 1. veryodd (matpow A k))"
  sorry

end