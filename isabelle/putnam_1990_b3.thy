theory putnam_1990_b3 imports Complex_Main "HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1990_b3:
  fixes S::"(nat^2^2) set"       
  assumes hS : "\<forall>A \<in> S. (\<forall>i j :: 2. ((\<exists>x::nat. A$i$j = x^2) \<and> A$i$j \<le> 200))"
  shows "card S > 50387 \<longrightarrow> (\<exists>A \<in> S. \<exists>B \<in> S. A \<noteq> B \<and> A ** B = B ** A)"
  sorry

end