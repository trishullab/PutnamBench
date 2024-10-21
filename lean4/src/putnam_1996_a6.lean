import Mathlib

open Function

abbrev putnam_1996_a6_solution : ℝ → Set (ℝ → ℝ) := sorry
-- (fun c : ℝ => if c ≤ 1 / 4 then {f : ℝ → ℝ | ∃ d : ℝ, ∀ x : ℝ, f x = d} else {f : ℝ → ℝ | ContinuousOn f (Set.Icc 0 c) ∧ f 0 = f c ∧ (∀ x > 0, f x = f (x ^ 2 + c)) ∧ (∀ x < 0, f x = f (-x))})
/--
Let $c>0$ be a constant. Give a complete description, with proof, of the set of all continuous functions $f:\mathbb{R} \to \mathbb{R}$ such that $f(x)=f(x^2+c)$ for all $x \in \mathbb{R}$.
-/
theorem putnam_1996_a6
(c : ℝ)
(f : ℝ → ℝ)
(cgt0 : c > 0)
: (Continuous f ∧ ∀ x : ℝ, f x = f (x ^ 2 + c)) ↔ f ∈ putnam_1996_a6_solution c :=
sorry
