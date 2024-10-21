import Mathlib

open Set Topology Filter Polynomial MeasureTheory

/--
In the plane, let $C$ be a closed convex set that contains $(0,0) but no other point with integer coordinations. Suppose that $A(C)$, the area of $C$, is equally distributed among the four quadrants. Prove that $A(C) \leq 4$.
-/
theorem putnam_1979_b5
(C : Set (ℝ × ℝ))
(hC : IsClosed C ∧ Convex ℝ C ∧ (0,0) ∈ C)
(hCnint : ∀ a b : ℤ, (a ≠ 0 ∨ b ≠ 0) → ((a : ℝ), (b : ℝ)) ∉ C)
(hCeven : volume (C ∩ {p : ℝ × ℝ | p.1 ≥ 0 ∧ p.2 ≥ 0}) = volume (C ∩ {p : ℝ × ℝ | p.1 ≥ 0 ∧ p.2 ≤ 0}) ∧ volume (C ∩ {p : ℝ × ℝ | p.1 ≥ 0 ∧ p.2 ≤ 0}) = volume (C ∩ {p : ℝ × ℝ | p.1 ≤ 0 ∧ p.2 ≥ 0}) ∧ volume (C ∩ {p : ℝ × ℝ | p.1 ≤ 0 ∧ p.2 ≥ 0}) = volume (C ∩ {p : ℝ × ℝ | p.1 ≤ 0 ∧ p.2 ≤ 0}))
: volume C ≤ 4 :=
sorry
