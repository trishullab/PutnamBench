theory putnam_1998_a5 imports Complex_Main "HOL-Analysis.Elementary_Metric_Spaces"
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_1998_a5:
  fixes k::nat and c::"nat \<Rightarrow> (real \<times> real)" and r::"nat \<Rightarrow> real" and E::"(real \<times> real) set"
  assumes hr : "\<forall>i \<in> {0..<k}. r i  > 0"
    and hE : "E \<subseteq> (\<Union> i \<in> {0..<k}. ball (c i) (r i))"
  shows "\<exists>n::nat. \<exists>t::nat\<Rightarrow>nat. (\<forall>i \<in> {0..<n}. \<forall>j \<in> {0..<n}. i \<noteq> j \<longrightarrow> ((ball (c (t i)) (r (t i)) \<inter> (ball (c (t j)) (r (t j))) = {}))) 
    \<and> E \<subseteq> (\<Union> i \<in> {0..<n}. ball (c (t i)) (3 * (r (t i))))"
  sorry

end