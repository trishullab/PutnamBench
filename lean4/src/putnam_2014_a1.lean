import Mathlib

open Topology Filter

/--
Prove that every nonzero coefficient of the Taylor series of \[(1 - x + x^2)e^x\] about $x=0$ is a rational number whose numerator (in lowest terms) is either $1$ or a prime number.
-/
theorem putnam_2014_a1
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, f x = (1 - x + x ^ 2) * Real.exp x)
(hfdiff : ContDiff ℝ ⊤ f)
(c : ℕ → ℝ)
(hc : ∀ k : ℕ, c k = taylorCoeffWithin f k Set.univ 0)
: ∀ k : ℕ, c k ≠ 0 → ∃ q : ℚ, c k = q ∧ (q.num = 1 ∨ Prime q.num.natAbs) :=
sorry
