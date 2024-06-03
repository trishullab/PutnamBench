theory putnam_1969_b2 imports Complex_Main
"HOL-Algebra.Group"
begin

(* uses (nat \<Rightarrow> ('a set)) instead of (Fin n \<Rightarrow> ('a set)) *)
theorem putnam_1969_b2:
  fixes G (structure)
  and h :: "nat \<Rightarrow> bool"
  assumes hG: "group G \<and> finite (carrier G)"
  defines "h \<equiv> (\<lambda>n::nat. (\<exists>H::nat\<Rightarrow>('a set). (\<forall>i::nat\<in>{0..(n-1)}. subgroup (H i) G \<and> H i \<noteq> carrier G) \<and> (carrier G = (\<Union>i::nat\<in>{0..(n-1)}. H i))))"
  shows "\<not>(h 2) \<and> ((\<not>(h 3)) \<longleftrightarrow> ( False ))"
  sorry

end
