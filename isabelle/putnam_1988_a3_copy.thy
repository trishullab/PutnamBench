theory putnam_1988_a3 imports
Complex_Main
begin

theorem putnam_1988_a3:
  shows "{x :: real. convergent (\<lambda> t :: nat. (\<Sum> n = 1..t. (1 / n) / sin (1 / n) - 1) powr x)} = ( {x :: real. x > 1 / 2} )"
  sorry

end