theory putnam_1965_a2 imports
Complex_Main
begin

theorem putnam_1965_a2:
  shows "\<forall> n > 0. (\<Sum> r = 0 .. (n - 1) div 2. ((n - 2 * r) * (n choose r) / n) ^ 2) = ((2 * n - 2) choose (n - 1)) / n"
  sorry

end