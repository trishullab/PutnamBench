theory putnam_1968_b2 imports
Complex_Main
"HOL-Algebra.Multiplicative_Group"
begin

theorem putnam_1968_b2: 
  fixes A :: "'a set"
  and G :: "'a monoid"
  assumes hG: "group G \<and> finite (carrier G)"
  and hAsG: "A \<subseteq> carrier G"
  and hA: "card A > card (carrier G) / 2"
  shows "\<forall> g \<in> carrier G. \<exists> x y. x \<in> A \<and> y \<in> A \<and> g = x \<otimes>\<^bsub>G\<^esub> y"
  sorry

end