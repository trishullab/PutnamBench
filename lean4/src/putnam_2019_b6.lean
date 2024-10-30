import Mathlib

open Topology Filter Set Matrix

abbrev putnam_2019_b6_solution : Set ℕ := sorry
-- Set.Ici 1
/--
Let \( \mathbb{Z}^n \) be the integer lattice in \( \mathbb{R}^n \). Two points in \( \mathbb{Z}^n \) are called neighbors if they differ by exactly 1 in one coordinate and are equal in all other coordinates. For which integers \( n \geq 1 \) does there exist a set of points \( S \subset \mathbb{Z}^n \) satisfying the following two conditions? \begin{enumerate} \item If \( p \) is in \( S \), then none of the neighbors of \( p \) is in \( S \). \item If \( p \in \mathbb{Z}^n \) is not in \( S \), then exactly one of the neighbors of \( p \) is in \( S \). \end{enumerate}
-/
theorem putnam_2019_b6
  (n : ℕ)
  (neighbors : (Fin n → ℤ) → (Fin n → ℤ) → Prop)
  (neighbors_def : ∀ p q, neighbors p q ↔ (∃ i : Fin n, abs (p i - q i) = 1 ∧ ∀ j ≠ i, p j = q j)) :
  (1 ≤ n ∧ ∃ S : Set (Fin n → ℤ),
    (∀ p ∈ S, ∀ q, neighbors p q → q ∉ S) ∧ (∀ p ∉ S, {q ∈ S | neighbors p q}.encard = 1))
  ↔ n ∈ putnam_2019_b6_solution :=
sorry
