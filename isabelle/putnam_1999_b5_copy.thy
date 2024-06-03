theory putnam_1999_b5 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Determinants"
begin

theorem putnam_1999_b5:
  fixes n :: nat
  and theta :: real
  and A :: "real^'n^'n"
  and idx :: "'n \<Rightarrow> nat"
  defines "theta \<equiv> 2 * pi / n"
  and "A \<equiv> \<chi> j k. cos (idx j * theta + idx k * theta)"
  assumes hn: "n \<ge> 3"
  and hncard: "CARD('n) = n"
  and idxbij: "\<forall> i \<in> {1..n}. \<exists>! m :: 'n. idx m = i"
  shows "det (mat 1 + A) = ( \<lambda> n. 1 - n ^ 2 / 4 ) n"
  sorry

end