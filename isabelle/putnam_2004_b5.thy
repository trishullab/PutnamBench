theory putnam_2004_b5 imports Complex_Main
begin

definition putnam_2004_b5_solution where "putnam_2004_b5_solution \<equiv> undefined"
(* 2 / exp 1 *)
theorem putnam_2004_b5:
  fixes xprod :: "real \<Rightarrow> real"
  assumes hxprod : "\<forall> x \<in> {0..1}.
    xprod x = lim (\<lambda>N::nat. (\<Prod>n=0..N. ((1+x^(n+1)) / (1 + x^n)) powr (x^n)))"
  shows "(xprod \<longlongrightarrow> putnam_2004_b5_solution) (at_left 1)"
  sorry

end
