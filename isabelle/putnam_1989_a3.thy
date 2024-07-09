theory putnam_1989_a3 imports
Complex_Main
begin

theorem putnam_1989_a3:
  fixes z :: complex
  assumes hz: "11 * z ^ 10 + 10 * \<i> * z ^ 9 + 10 * \<i> * z - 11 = 0"
  shows "norm z = 1"
  sorry

end