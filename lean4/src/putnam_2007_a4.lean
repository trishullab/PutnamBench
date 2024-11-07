import Mathlib

open Set Nat

abbrev putnam_2007_a4_solution : Set (Polynomial ℝ) := sorry
-- {f : Polynomial ℝ | ∃ d : ℕ, ∃ c ≥ (1 : ℤ) - d, ∀ n : ℝ, f.eval n = (1 / 9) * ((10 ^ c) * (9 * n + 1) ^ d - 1)}
/--
A \emph{repunit} is a positive integer whose digits in base 10 are all ones. Find all polynomials $f$ with real coefficients such that if $n$ is a repunit, then so is $f(n)$.
-/
theorem putnam_2007_a4
(S : Set (Polynomial ℝ))
(repunit : ℝ → Prop)
(hrepunit : ∀ x, repunit x ↔ x > 0 ∧ x = floor x ∧ ∀ d ∈ (digits 10 (floor x)), d = 1)
(hS : ∀ f, f ∈ S ↔ (∀ n : ℝ, repunit n → repunit (f.eval n)))
: (S = putnam_2007_a4_solution) :=
sorry
