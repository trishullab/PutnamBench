theory putnam_2015_b4 imports Complex_Main
"HOL-Analysis.Infinite_Sum"
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_2015_b4:
  shows "\<exists>q::rat. (\<Sum>\<^sub>\<infinity>t::nat^3. if ((t$1 > 0 \<and> t$2 > 0 \<and> t$3 > 0) \<and> t$1 < t$2 + t$3 \<and> t$2 < t$3 + t$1 \<and> t$3 < t$1 + t$2)
  then (2^(t$1) / (3^(t$2)*5^(t$3))) else 0) = q \<and> quotient_of q = ( (17,21) )"
  sorry

end
