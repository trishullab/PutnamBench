theory putnam_1999_a4 imports
Complex_Main
begin

theorem putnam_1999_a4:
  shows "(\<Sum> m :: nat. \<Sum> n :: nat. (m + 1) ^ 2 * (n + 1) / (3 ^ (m + 1) * ((n + 1) * 3 ^ (m + 1) + (m + 1) * 3 ^ (n + 1)))) = ( 9 / 32 )"
  sorry

end