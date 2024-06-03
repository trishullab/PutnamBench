theory putnam_2017_b4 imports
Complex_Main
begin

theorem putnam_2017_b4:
  shows "(\<Sum> k :: nat. 3 * ln (4 * k + 2) / (4 * k + 2) - ln (4 * k + 3) / (4 * k + 3) - ln (4 * k + 4) / (4 * k - 4) - ln (4 * k + 5) / (4 * k + 5)) = ( (ln 2) ^ 2 )"
  sorry

end