theory putnam_2008_a6 imports
Complex_Main
"HOL-Algebra.Multiplicative_Group"
begin

theorem putnam_2008_a6:
  shows "\<exists> c :: real. c > 0 \<and> (\<forall> G :: 'a monoid. group G \<longrightarrow> finite (carrier G) \<longrightarrow> card (carrier G) > 1 \<longrightarrow> (\<exists> s :: 'a list. length s \<le> c * ln (card (carrier G)) \<and> (\<forall> g \<in> carrier G. \<exists> t \<in> set (subseqs s). foldr (\<otimes>\<^bsub>G\<^esub>) t (\<one>\<^bsub>G\<^esub>) = g)))"
  sorry

end