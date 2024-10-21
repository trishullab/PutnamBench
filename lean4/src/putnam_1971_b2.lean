import Mathlib

open Set MvPolynomial

abbrev putnam_1971_b2_solution : Set (ℝ → ℝ) := sorry
-- {fun x : ℝ => (x^3 - x^2 - 1)/(2 * x * (x - 1))}
/--
Find all functions $F : \mathbb{R} \setminus \{0, 1\} \to \mathbb{R}$ that satisfy $F(x) + F\left(\frac{x - 1}{x}\right) = 1 + x$ for all $x \in \mathbb{R} \setminus \{0, 1\}$.
-/
theorem putnam_1971_b2
(S : Set ℝ)
(hS : S = univ \ {0, 1})
(P : (ℝ → ℝ) → Prop)
(hP : P = fun (F : ℝ → ℝ) => ∀ x ∈ S, F x + F ((x - 1)/x) = 1 + x)
: (∀ F ∈ putnam_1971_b2_solution, P F) ∧ ∀ f : ℝ → ℝ, P f → ∃ F ∈ putnam_1971_b2_solution, (∀ x ∈ S, f x = F x) :=
sorry
