import Mathlib

open MvPolynomial

-- Note: uses (ℕ → ℤ) instead of (Fin k → ℤ)
abbrev putnam_2003_a1_solution : ℕ → ℕ := sorry
-- fun n => n
/--
Let $n$ be a fixed positive integer. How many ways are there to write $n$ as a sum of positive integers, \[ n = a_1 + a_2 + \dots + a_k, \] with $k$ an arbitrary positive integer and $a_1 \leq a_2 \leq \dots \leq a_k \leq a_1 + 1$? For example, with $n = 4$, there are four ways: $4, 2 + 2, 1 + 1 + 2, 1 + 1 + 1 + 1$
-/
theorem putnam_2003_a1
(n : ℕ) (hn : n > 0)
: Set.encard {a : ℕ → ℤ |
  ∃ k > 0, (∑ i : Fin k, a i = n) ∧
    (∀ i : Fin k, a i > 0) ∧
    (∀ i : Fin (k - 1), a i ≤ a (i + 1)) ∧
    a (k - 1) ≤ a 0 + 1 ∧ (∀ i ≥ k, a i = 0)}
  = putnam_2003_a1_solution n :=
sorry
