theory putnam_1995_b4 imports Complex_Main
begin

theorem putnam_1995_b4:
  fixes contfrac :: real
  assumes hcontfrac: "contfrac = 2207 - 1/contfrac"
  shows "let (a,b,c,d) = ( (3,1,5,2) ) in (contfrac powr (1/8) = (a + b * sqrt c) / d)"
  sorry

end
