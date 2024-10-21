import Mathlib

open Topology Filter Matrix

abbrev putnam_2011_a4_solution : Set ℕ := sorry
-- {n : ℕ | Odd n}
/--
For which positive integers $n$ is there an $n \times n$ matrix with integer entries such that every dot product of a row with itself is even, while every dot product of two different rows is odd?
-/
theorem putnam_2011_a4
    (nmat : ℕ → Prop)
    (hnmat : ∀ n, nmat n ↔
      ∃ A : Matrix (Fin n) (Fin n) ℤ,
        (∀ r, Even ((A r) ⬝ᵥ (A r))) ∧
        Pairwise fun r1 r2 ↦ Odd ((A r1) ⬝ᵥ (A r2)))
    (n : ℕ) (npos : 0 < n) :
    nmat n ↔ n ∈ putnam_2011_a4_solution :=
  sorry
