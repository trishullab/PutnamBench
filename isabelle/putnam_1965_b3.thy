theory putnam_1965_b3 imports
Complex_Main
begin

theorem putnam_1965_b3:
  shows "card {(a :: int, b :: int, c :: int). a > 0 \<and> a \<le> b \<and> c > 0 \<and> a ^ 2 + b ^ 2 = c ^ 2 \<and> a * b / 2 = 2 * (a + b + c)} = 3"
  sorry

end