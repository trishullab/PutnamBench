theory putnam_2016_b6 imports Complex_Main
"HOL-Analysis.Infinite_Sum"
begin

definition putnam_2016_b6_solution :: real where "putnam_2016_b6_solution \<equiv> undefined"
(* 1 *)
theorem putnam_2016_b6:
  shows "(\<Sum>\<^sub>\<infinity>k::nat\<in>{1..}. ((-1)^(k-1) / k) * (\<Sum>n::nat. 1 / (k*2^n + 1))) = putnam_2016_b6_solution"
  sorry

end
