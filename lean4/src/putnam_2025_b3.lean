import Mathlib

open Finset

abbrev putnam_2025_b3_solution : Prop := sorry
-- True

/--
Suppose $S$ is a nonempty set of positive integers with the property that if $n$ is in $S$,
then every positive divisor of $2025^n - 15^n$ is in $S$. Must $S$ contain all positive integers?
-/
theorem putnam_2025_b3 :
    putnam_2025_b3_solution ↔
    ∀ S : Set ℕ,
      S.Nonempty →
      (∀ n ∈ S, 0 < n) →
      (∀ n ∈ S, ∀ d : ℕ, 0 < d → d ∣ (2025 ^ n - 15 ^ n) → d ∈ S) →
      S = {n : ℕ | 0 < n} := by
  sorry
