theory putnam_1971_a4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1971_a4:
  fixes \<epsilon> :: real
  and P :: "nat \<Rightarrow> real \<Rightarrow> (real poly poly)"
  assumes h\<epsilon>: "0 < \<epsilon> \<and> \<epsilon> < 1"
  defines "P \<equiv> (\<lambda>(n::nat)(\<delta>::real). (monom (monom 1 1) 0 + monom (monom 1 0) 1)^n * ((monom (monom 1 1) 0)^2 - (monom (monom (2 - \<delta>) 0) 0)*(monom (monom 1 1) 1) + (monom (monom 1 0) 1)^2))"
  shows "\<exists>N::nat. \<forall>n::nat\<ge>N. (\<forall>i j::nat. coeff (coeff (P n \<epsilon>) j) i > 0)"
  sorry

end
