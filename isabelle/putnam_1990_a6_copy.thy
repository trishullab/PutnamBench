theory putnam_1990_a6 imports Complex_Main
begin

theorem putnam_1990_a6:
  fixes STadmiss::"(nat set) \<Rightarrow> (nat set) \<Rightarrow> bool"
  defines "STadmiss \<equiv> \<lambda>S. \<lambda>T. S \<subseteq> {1..10} \<and> T \<subseteq> {1..10} \<and> (\<forall>s \<in> S. s > (card T)) \<and> (\<forall>t \<in> T. t > (card S))"
  shows "card {(S::(nat set), T::(nat set)) . STadmiss S T} = ( 17711 )"
  sorry

end