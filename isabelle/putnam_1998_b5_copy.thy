theory putnam_1998_b5 imports Complex_Main
begin

theorem putnam_1998_b5:
  fixes N::nat
  defines "N \<equiv> (\<Sum>i=0..<1998. 10^i)"
  shows "( 1 ) = (\<lfloor>10^1000 * sqrt N\<rfloor> mod 10)"
  sorry

end