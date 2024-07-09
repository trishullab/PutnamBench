theory putnam_1999_b5 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Determinants"
begin

definition putnam_1999_b5_solution :: "nat \<Rightarrow> real" where "putnam_1999_b5_solution \<equiv> undefined"
(* \<lambda> n. 1 - n ^ 2 / 4 *)
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
  shows "det (mat 1 + A) = putnam_1999_b5_solution n"
  sorry

end