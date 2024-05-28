theory putnam_1988_b1 imports
Complex_Main
begin

theorem putnam_1988_b1:
  shows "\<forall> (a :: nat) \<ge> 2. \<forall> (b :: nat) \<ge> 2. \<exists> (x :: nat) > 0. \<exists> (y :: nat) > 0. \<exists> (z :: nat) > 0. a * b = x * y + x * z + y * z + 1"
  sorry

end