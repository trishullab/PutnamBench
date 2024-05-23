theory putnam_1997_a4 imports Complex_Main
begin

theorem putnam_1997_a4:
  fixes Gmul::"'g \<Rightarrow> 'g \<Rightarrow> 'g" (infixl "\<^bold>*" 70) and e::'g and inv::"'g\<Rightarrow>'g" and \<phi>::"'g\<Rightarrow>'g"
  assumes hgroup : "group (\<^bold>*) e inv"
    and hphi : "\<forall> g1 g2 g3 h1 h2 h3::'g. (g1 \<^bold>* g2 \<^bold>* g3 = e \<and> h1 \<^bold>* h2 \<^bold>* h3 = e) \<longrightarrow> \<phi> g1 \<^bold>* \<phi> g2 \<^bold>* \<phi> g3 = \<phi> h1 \<^bold>* \<phi> h2 \<^bold>* \<phi> h3"
  shows "\<exists>a::'g. \<forall>x y::'g. a \<^bold>* \<phi> (x \<^bold>* y) = (a \<^bold>* \<phi> x) \<^bold>* (a \<^bold>* \<phi> y)"
  sorry


end