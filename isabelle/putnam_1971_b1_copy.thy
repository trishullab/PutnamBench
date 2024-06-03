theory putnam_1971_b1 imports Complex_Main
begin

theorem putnam_1971_b1:
  fixes Smul :: "'S \<Rightarrow> 'S \<Rightarrow> 'S" (infixl "\<^bold>*" 70)
  assumes hself: "\<forall>x::'S. x \<^bold>* x = x"
  and h2: "\<forall>x y z::'S. (x \<^bold>* y) \<^bold>* z = (y \<^bold>* z) \<^bold>* x"
  shows "\<forall>x y z::'S. (x \<^bold>* y) \<^bold>* z = x \<^bold>* (y \<^bold>* z) \<and> x \<^bold>* y = y \<^bold>* x"
  sorry

end
