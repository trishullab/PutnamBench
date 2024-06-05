theory putnam_1995_b6 imports Complex_Main
begin

theorem putnam_1995_b6:
  fixes S :: "real \<Rightarrow> (nat set)"
  defines "S \<equiv> (\<lambda>\<alpha>::real. {x::nat. (\<exists>n::nat. n \<ge> 1 \<and> x = \<lfloor>n*\<alpha>\<rfloor>)})"
  shows "\<not>(\<exists>\<alpha> \<beta> \<gamma>::real. \<alpha> > 0 \<and> \<beta> > 0 \<and> \<gamma> > 0 \<and> (S \<alpha>) \<inter> (S \<beta>) = {} \<and> (S \<beta>) \<inter> (S \<gamma>) = {} \<and> (S \<alpha>) \<inter> (S \<gamma>) = {} \<and> {1::nat..} = (S \<alpha>) \<union> (S \<beta>) \<union> (S \<gamma>))"
  sorry

end
