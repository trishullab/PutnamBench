theory putnam_1996_b2 imports
Complex_Main
begin

theorem putnam_1996_b2:
  fixes n :: nat
  and prododd :: real
  defines "prododd \<equiv> \<Prod> i \<in> {1 .. 2 * n - 1}. if odd i then i else 1"
  assumes npos: "n > 0"          
  shows "((2 * n - 1) / exp 1) powr ((2 * n - 1) / 2) < prododd \<and> prododd < ((2 * n + 1) / exp 1) powr ((2 * n + 1) / 2)"
  sorry

end