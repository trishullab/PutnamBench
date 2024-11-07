import Mathlib

open Polynomial

-- Note: uses (ℝ → ℝ) instead of (Rpos → Rpos) to check the equality property
abbrev putnam_2022_b6_solution : Set (Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ)) := sorry
-- {f : Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ) | ∃ c : ℝ, c ≥ 0 ∧ ∀ x : Set.Ioi (0 : ℝ), f x = 1 / (1 + c * x)}
/--
Find all continuous functions $f:\mathbb{R}^+ \to \mathbb{R}^+$ such that $f(xf(y))+f(yf(x))=1+f(x+y)$ for all $x,y>0$.
-/
theorem putnam_2022_b6
  (f : Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ))
  (hf : Continuous f) :
  (∃ fr : ℝ → ℝ, (∀ x : Set.Ioi (0 : ℝ), fr x = f x) ∧ (∀ x y : Set.Ioi (0 : ℝ), fr (x * fr y) + fr (y * fr x) = 1 + fr (x + y)))
  ↔ f ∈ putnam_2022_b6_solution :=
sorry
