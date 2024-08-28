import Mathlib
open BigOperators

open Topology Filter Nat Function Polynomial

theorem putnam_1992_b2
    (Q : ℕ → ℕ → ℕ)
    (hQ : Q = fun n k ↦ coeff ((1 + X + X ^ 2 + X ^ 3) ^ n) k)
    (n k : ℕ) :
    Q n k = ∑ j in Finset.Iic k, choose n j * (if 2 * j ≤ k then choose n (k - 2 * j) else 0) :=
  sorry
