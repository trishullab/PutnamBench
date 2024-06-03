theory putnam_1988_b1 imports
Complex_Main
begin

theorem putnam_1988_b1:
  shows "\<forall> (a :: int) \<ge> 2. \<forall> (b :: int) \<ge> 2. \<exists> x y z:: int. x > 0 \<and> y > 0 \<and> z > 0 \<and>  a * b = x * y + x * z + y * z + 1"
  sorry

end