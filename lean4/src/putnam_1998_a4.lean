import Mathlib
open BigOperators

-- Note: Since 11 divides `x` iff it divides its base-10 reverse, the `reverse` below is optional.
abbrev putnam_1998_a4_solution : Set ℕ := sorry
-- {n | n ≡ 1 [MOD 6]}
theorem putnam_1998_a4
    (A : ℕ → List ℕ)
    (hA1 : A 1 = [0])
    (hA2 : A 2 = [1])
    (hA : ∀ n, A (n + 2) = A (n + 1) ++ A n) :
    {n | 1 ≤ n ∧ 11 ∣ Nat.ofDigits 10 (A n).reverse} = putnam_1998_a4_solution :=
  sorry
