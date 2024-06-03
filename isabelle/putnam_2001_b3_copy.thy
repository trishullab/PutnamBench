theory putnam_2001_b3 imports
Complex_Main
begin

theorem putnam_2001_b3:
  shows "(\<Sum> n :: nat. (2 powr (round (sqrt (n + 1))) + 2 powr (- round (sqrt (n + 1)))) / 2 powr (n + 1)) = ( 3 )"
  sorry

end