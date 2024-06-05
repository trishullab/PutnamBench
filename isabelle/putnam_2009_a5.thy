theory putnam_2009_a5 imports Complex_Main
"HOL-Algebra.Multiplicative_Group"
begin

definition putnam_2009_a5_solution :: bool where "putnam_2009_a5_solution \<equiv> undefined"
(* False *)
theorem putnam_2009_a5:
  assumes pacount: "\<exists>pamap::'a\<Rightarrow>nat. surj pamap"
  shows "(\<exists>G::'a monoid. finite (carrier G) \<and> comm_group G \<and> (\<Prod>g\<in>(carrier G). (group.ord G) g) = 2^2009) \<longleftrightarrow> putnam_2009_a5_solution"
  sorry

end
