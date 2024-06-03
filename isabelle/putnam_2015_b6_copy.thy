theory putnam_2015_b6 imports Complex_Main
"HOL-Analysis.Infinite_Sum"
begin

theorem putnam_2015_b6:
  fixes A :: "nat \<Rightarrow> nat"
  assumes hA: "\<forall>k::nat>0. A k = card {j::nat. odd j \<and> j dvd k \<and> j < sqrt (2*k)}"
  shows "(\<Sum>\<^sub>\<infinity>k::nat\<in>{1..}. (-1)^(k-1) * (A k / k)) = ( pi^2 / 16 )"
  sorry

end
