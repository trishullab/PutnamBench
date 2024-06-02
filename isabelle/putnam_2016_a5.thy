theory putnam_2016_a5 imports Complex_Main
"HOL-Algebra.Multiplicative_Group"
begin

theorem putnam_2016_a5:
  fixes G (structure) and g h::"'a" and S::"'a set"
  defines "S \<equiv> {g \<otimes> h, inv g \<otimes> h, g \<otimes> inv h, inv g \<otimes> inv h}"
  assumes hG : "Group.group G \<and> finite (carrier G)"
    and ghgen : "generate G {h, g} = carrier G \<and> generate G {h} \<noteq> carrier G \<and> generate G {g} \<noteq> carrier G"
    and godd : "odd ( (group.ord G) g)"
  shows "\<forall>x \<in> carrier G. \<exists> mn::'a list. \<forall>i\<in>{0..<card (carrier G)}. size mn \<ge> 1 \<and> size mn \<le> card (carrier G)
    \<and> mn!i \<in> S \<and> x = foldr (\<otimes>\<^bsub>G\<^esub>) mn \<one>"
  sorry

end
