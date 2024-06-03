theory putnam_2015_a4 imports Complex_Main
"HOL-Analysis.Infinite_Sum"
begin

theorem putnam_2015_a4:
  fixes S::"real\<Rightarrow>(nat set)" and f::"real\<Rightarrow>real" and p::"real\<Rightarrow>bool"
  defines "S \<equiv> \<lambda>x::real. {n::nat. n > 0 \<and> even (\<lfloor>n * x\<rfloor>)}"
    and "f \<equiv> \<lambda>x::real. \<Sum>\<^sub>\<infinity>n \<in> S x. 1 / (2 ^ n)"
  shows "( 4/7 ) = (GREATEST l::real. \<forall>x \<in> {0..<1}. f x \<ge> l)"
  sorry

end
