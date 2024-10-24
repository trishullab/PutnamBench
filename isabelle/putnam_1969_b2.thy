theory putnam_1969_b2 imports Complex_Main
"HOL-Algebra.Group"
begin

(* uses (nat \<Rightarrow> ('a set)) instead of (Fin n \<Rightarrow> ('a set)) *)
definition putnam_1969_b2_solution :: bool where "putnam_1969_b2_solution \<equiv> undefined"
(* False *)
theorem putnam_1969_b2:
  fixes P :: "nat \<Rightarrow> bool"
  defines "P \<equiv> \<lambda> n. \<forall> G. group G \<and> finite (carrier G) \<longrightarrow>
    (\<forall> H. (\<forall> i\<in>{0..<n}. subgroup (H i) G \<and> (H i) \<noteq> carrier G) \<longrightarrow> (carrier G \<noteq> (\<Union>i::nat\<in>{0..<n}. H i)))"
  shows "P 2 \<and> (P 3 \<longleftrightarrow> putnam_1969_b2_solution)"
  sorry

end
