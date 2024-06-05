theory putnam_2012_a2 imports Complex_Main
begin

theorem putnam_2012_a2:
  fixes Smul :: "'S \<Rightarrow> 'S \<Rightarrow> 'S" (infixl "\<^bold>*" 70)
  and a b c :: 'S
  assumes Smulasg: "abel_semigroup Smul"
  and hS: "\<forall>x y::'S. \<exists>z::'S. x \<^bold>* z = y"
  and habc: "a \<^bold>* c = b \<^bold>* c"
  shows "a = b"
  sorry

end
