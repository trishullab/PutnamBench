theory putnam_2003_b3 imports Complex_Main
begin

theorem putnam_2003_b3:
  fixes n::nat
  assumes npos : "n > 0"
  shows "fact n = (∏i=1..n. Lcm {1..⌊n / i⌋})"
  sorry

end