import Mathlib

open Metric Set EuclideanGeometry

/--
Prove that, for all $a > 0$ and $b > 0$, the power series of $e^{ax} \cos (bx)$ with respect to $x$ has either zero or infinitely many zero coefficients.
-/
theorem putnam_1970_a1
(a b : ℝ)
(ha : a > 0)
(hb : b > 0)
(f : ℝ → ℝ)
(f_def : f = fun x : ℝ => Real.exp (a*x) * Real.cos (b*x))
(p : ℕ → ℝ)
(hp : ∃ c : ℝ, c > 0 ∧ ∀ x ∈ ball 0 c, ∑' n : ℕ, (p n)*x^n = f x)
(S : Set ℕ)
(S_def : S = {n : ℕ | p n = 0})
: S = ∅ ∨ ¬Finite S :=
sorry
