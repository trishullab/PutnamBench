import Mathlib

open Set MvPolynomial

abbrev putnam_1971_a5_solution : ℤ × ℤ := sorry
-- (11, 8)
/--
After each play of a certain game of solitaire, the player receives either $a$ or $b$ points, where $a$ and $b$ are positive integers with $a > b$; scores accumulate from play to play. If there are $35$ unattainable scores, one of which is $58$, find $a$ and $b$.
-/
theorem putnam_1971_a5
    (a b : ℤ)
    (hab : a > 0 ∧ b > 0 ∧ a > b)
    (pab : ℤ → ℤ → Prop)
    (hpab : ∀ x y, pab x y ↔
      {s : ℕ | ¬∃ m n : ℕ, m*x + n*y = s}.ncard = 35 ∧
      ¬∃ m n : ℕ, m*x + n*y = 58) :
    pab a b ↔ a = putnam_1971_a5_solution.1 ∧ b = putnam_1971_a5_solution.2 :=
  sorry
