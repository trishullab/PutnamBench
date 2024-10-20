theory putnam_1995_b4 imports Complex_Main
begin

definition putnam_1995_b4_solution :: "int \<times> int \<times> int \<times> int" where "putnam_1995_b4_solution \<equiv> undefined"
(* (3,1,5,2) *)
theorem putnam_1995_b4:
  fixes contfrac :: real
  assumes hcontfrac : "contfrac = 2207 - 1/contfrac"
    and hcontfrac': "1 < contfrac"
  shows "let (a,b,c,d) = putnam_1995_b4_solution in (contfrac powr (1/8) = (a + b * sqrt c) / d)"
  sorry

end
