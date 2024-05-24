theory putnam_1998_b5 imports Complex_Main
begin

definition putnam_1998_b5_solution::nat where "putnam_1998_b5_solution \<equiv> undefined"
(* 1 *)
theorem putnam_1998_b5:
  fixes N::nat
  defines "N \<equiv> (\<Sum>i=0..<1998. 10^i)"
  shows "putnam_1998_b5_solution = (\<lfloor>10^1000 * sqrt N\<rfloor> mod 10)"
  sorry

end