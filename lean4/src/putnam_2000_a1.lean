import Mathlib

open Topology Filter

abbrev putnam_2000_a1_solution : ℝ → Set ℝ := sorry
-- (fun A : ℝ => Set.Ioo 0 (A ^ 2))
/--
Let $A$ be a positive real number. What are the possible values of $\sum_{j=0}^\infty x_j^2$, given that $x_0,x_1,\ldots$ are positive numbers for which $\sum_{j=0}^\infty x_j=A$?
-/
theorem putnam_2000_a1
(A : ℝ)
(Apos : A > 0)
: {S : ℝ |
    ∃ x : ℕ → ℝ,
      (∀ j : ℕ, x j > 0) ∧
      (∑' j : ℕ, x j) = A ∧
      (∑' j : ℕ, (x j) ^ 2) = S}
  = putnam_2000_a1_solution A :=
sorry
