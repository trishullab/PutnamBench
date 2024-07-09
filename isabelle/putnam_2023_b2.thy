theory putnam_2023_b2 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

definition putnam_2023_b2_solution :: "nat" where "putnam_2023_b2_solution \<equiv> undefined"
(* 3 *)
theorem putnam_2023_b2:
  fixes ones :: "nat \<Rightarrow> nat"
  assumes h0 : "ones 0 = 0"
    and hi : "\<forall> n > 0. ones n = ones (n div 2) + (if [n = 1] (mod 2) then 1 else 0)"
  shows "(LEAST k :: nat. \<exists> n > 0. ones (2023*n) = k) = putnam_2023_b2_solution"
  sorry

end