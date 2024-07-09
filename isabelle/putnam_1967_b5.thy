theory putnam_1967_b5 imports Complex_Main
begin

theorem putnam_1967_b5:
  fixes n :: "nat"
  assumes hn : "n > 0"
  shows "1/(2 :: real) = (\<Sum> i \<in> {0::nat..<n}. ((n + i - 1) choose i) * ((2 :: real) powr (-(int n) - i)))"
  sorry

end