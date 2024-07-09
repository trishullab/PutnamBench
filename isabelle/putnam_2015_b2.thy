theory putnam_2015_b2 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2015_b2_solution :: bool where "putnam_2015_b2_solution \<equiv> undefined"
(* True *)
theorem putnam_2015_b2:
  fixes sets :: "nat \<Rightarrow> nat set"
  and Smin3 :: "nat set \<Rightarrow> nat^3"
  and sum :: "nat \<Rightarrow> nat"
  assumes hsets0: "sets 0 = {1..}"
  and hmin3: "\<forall> S :: nat set. (infinite S \<or> card S \<ge> 3) \<longrightarrow> (Smin3 S)$1 = (LEAST x. x \<in> S) \<and> (Smin3 S)$2 = (LEAST x. x \<in> S - {(Smin3 S)$1}) \<and> (Smin3 S)$3 = (LEAST x. x \<in> S - {(Smin3 S)$1, (Smin3 S)$2})"
  and hsum: "\<forall> n :: nat. sum n = (Smin3 (sets n))$1 + (Smin3 (sets n))$2 + (Smin3 (sets n))$3"
  and hsetsn: "\<forall> n :: nat. sets (n + 1) = sets n - {(Smin3 (sets n))$1, (Smin3 (sets n))$2, (Smin3 (sets n))$3, sum n}"
  shows "(\<exists> n :: nat. (sum n) mod 10000 = 2015) \<longleftrightarrow> putnam_2015_b2_solution"
  sorry

end