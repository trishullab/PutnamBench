theory putnam_2015_b4 imports Complex_Main
"HOL-Analysis.Infinite_Sum"
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2015_b4_solution :: "int \<times> int" where "putnam_2015_b4_solution \<equiv> undefined"
(* (17,21) *)
theorem putnam_2015_b4:
  shows "\<exists>q::rat. (\<Sum>\<^sub>\<infinity>t::nat^3. if ((t$1 > 0 \<and> t$2 > 0 \<and> t$3 > 0) \<and> t$1 < t$2 + t$3 \<and> t$2 < t$3 + t$1 \<and> t$3 < t$1 + t$2)
  then (2^(t$1) / (3^(t$2)*5^(t$3))) else 0) = q \<and> quotient_of q = putnam_2015_b4_solution"
  sorry

end
