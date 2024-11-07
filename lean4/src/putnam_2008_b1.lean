import Mathlib

open Filter Topology Set

abbrev putnam_2008_b1_solution : ℕ := sorry
-- 2
def is_rational_point (p : Fin 2 → ℝ) : Prop := ∃ (a b : ℚ), a = p 0 ∧ b = p 1
def real_circle (c : EuclideanSpace ℝ (Fin 2)) (r : ℝ) : Set (EuclideanSpace ℝ (Fin 2)) := {p | dist p c = r}
/--
What is the maximum number of rational points that can lie on a circle in $\mathbb{R}^2$ whose center is not a rational point? (A \emph{rational point} is a point both of whose coordinates are rational numbers.)
-/
theorem putnam_2008_b1 :
  IsGreatest {n : ℕ | ∃ (c : EuclideanSpace ℝ (Fin 2)) (r : ℝ), ¬ is_rational_point c ∧ (Set.ncard {p : EuclideanSpace ℝ (Fin 2) | p ∈ real_circle c r ∧ is_rational_point p} = n)} putnam_2008_b1_solution :=
sorry
