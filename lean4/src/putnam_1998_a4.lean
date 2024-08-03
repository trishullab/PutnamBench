import Mathlib
open BigOperators

-- Note: Since .digits and .ofDigits work in little-endian mode, one must switch the order of the concatenation here.
abbrev putnam_1998_a4_solution : Set ℕ := sorry
-- {n | n ≡ 1 [MOD 6]}
theorem putnam_1998_a4
(A : ℕ → ℕ)
(hA1 : A 1 = 0)
(hA2 : A 2 = 1)
(hA : ∀ n : ℕ, n > 2 → A n = Nat.ofDigits 10 (Nat.digits 10 (A (n - 2)) ++ Nat.digits 10 (A (n - 1))))
: putnam_1998_a4_solution = {n | n ≥ 1 ∧ (11 ∣ A n)} :=
sorry
