theory putnam_1969_b2 imports Complex_Main
"HOL-Algebra.Group"
begin

(* uses (nat \<Rightarrow> ('a set)) instead of (Fin n \<Rightarrow> ('a set)) *)
definition putnam_1969_b2_solution :: bool where "putnam_1969_b2_solution \<equiv> undefined"
(* False *)
theorem putnam_1969_b2:
  fixes G (structure)
  and h :: "nat \<Rightarrow> bool"
  assumes hG: "group G \<and> finite (carrier G)"
  defines "h \<equiv> (\<lambda>n::nat. (\<exists>H::nat\<Rightarrow>('a set). (\<forall>i::nat\<in>{0..(n-1)}. subgroup (H i) G \<and> H i \<noteq> carrier G) \<and> (carrier G = (\<Union>i::nat\<in>{0..(n-1)}. H i))))"
  shows "\<not>(h 2) \<and> ((\<not>(h 3)) \<longleftrightarrow> putnam_1969_b2_solution)"
  sorry

end
