theory putnam_2003_a4 imports Complex_Main
begin

theorem putnam_2003_a4:
  fixes a b c A B C::real
  assumes aAne0 : "a ≠ 0 ∧ A ≠ 0"
    and hle : "∀x::real. abs(a * x^2 + b * x + c) ≤ abs(A * x^2 + B * x + C)"
  shows "abs(b^2 - 4 * a * c) ≤ abs(B^2 - 4 * A * C)"
  sorry

end