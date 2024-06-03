theory putnam_1995_b1 imports Complex_Main
"HOL-Library.Disjoint_Sets"
begin

theorem putnam_1995_b1:
  fixes part_ct :: "(nat set set) \<Rightarrow> nat \<Rightarrow> nat"
  assumes hp: "\<forall>(partition::nat set set)(k::nat). (\<forall>part\<in>partition. (k \<in> part \<longrightarrow> part_ct partition k = card part))"
  shows "\<forall>Pt1 Pt2::nat set set. ((partition_on {1..9} Pt1 \<and> partition_on {1..9} Pt2) \<longrightarrow> (\<exists>x::nat\<in>{1..9}. \<exists>y::nat\<in>{1..9}. x \<noteq> y \<and> part_ct Pt1 x = part_ct Pt1 y \<and> part_ct Pt2 x = part_ct Pt2 y))"
  sorry

end
