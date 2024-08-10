theory putnam_1990_a4 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_1990_a4_solution :: "nat" where "putnam_1990_a4_solution \<equiv> undefined"
(* 3 *)
theorem putnam_1990_a4:
  shows "(LEAST n :: nat. (\<exists> S :: (real^2) set. card S = n \<and> (\<forall> Q :: real^2. \<exists> P \<in> S. \<not>(\<exists> q :: rat. real_of_rat q = dist P Q)))) = putnam_1990_a4_solution"
  sorry

end