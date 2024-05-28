theory putnam_1988_b5 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Cartesian_Space"
begin

definition putnam_1988_b5_solution :: "nat \<Rightarrow> nat" where "putnam_1988_b5_solution \<equiv> undefined"
(* \<lambda> n :: nat. 2 * n *)
theorem putnam_1988_b5:
  fixes n :: nat
  and Mn :: "real^'m^'m"
  and idx :: "nat \<Rightarrow> 'm"
  assumes npos: "n > 0"
  and ncard: "CARD('m) = 2 * n + 1"
  and idxbij: "\<forall> m :: 'm. \<exists>! i \<in> {1 .. 2 * n + 1}. idx i = m"
  and Mnskewsymm: "\<forall> i \<in> {1 .. 2 * n + 1}. \<forall> j \<in> {1 .. 2 * n + 1}. Mn$(idx i)$(idx j) = -(Mn$(idx j)$(idx i))"
  and hMn1: "\<forall> i \<in> {1 .. 2 * n + 1}. \<forall> j \<in> {1 .. 2 * n + 1}. (1 \<le> i - j \<and> i - j \<le> n) \<longrightarrow> Mn$(idx i)$(idx j) = 1"
  and hMnn1: "\<forall> i \<in> {1 .. 2 * n + 1}. \<forall> j \<in> {1 .. 2 * n + 1}. i - j > n \<longrightarrow> Mn$(idx i)$(idx j) = -1"
  shows "rank Mn = putnam_1988_b5_solution n"
  sorry

end