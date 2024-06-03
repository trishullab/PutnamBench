theory putnam_2009_a5 imports Complex_Main
"HOL-Algebra.Multiplicative_Group"
begin

theorem putnam_2009_a5:
  assumes pacount: "\<exists>pamap::'a\<Rightarrow>nat. surj pamap"
  shows "(\<exists>G::'a monoid. finite (carrier G) \<and> comm_group G \<and> (\<Prod>g\<in>(carrier G). (group.ord G) g) = 2^2009) \<longleftrightarrow> ( False )"
  sorry

end
