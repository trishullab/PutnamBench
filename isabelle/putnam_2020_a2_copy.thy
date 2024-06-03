theory putnam_2020_a2 imports
Complex_Main
begin

theorem putnam_2020_a2:
  fixes k :: nat
  shows "(\<Sum> j = 0..k. 2 ^ (k - j) * (k + j choose j)) = ( \<lambda> k. 4 ^ k ) k"
  sorry

end