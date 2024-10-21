import Mathlib

open Topology Filter Nat

-- Note: This problem may have multiple correct answers.
noncomputable abbrev putnam_1984_b1_solution : Polynomial ℝ × Polynomial ℝ := sorry
-- (Polynomial.X + 3, -Polynomial.X - 2)
/--
Let $n$ be a positive integer, and define $f(n)=1!+2!+\dots+n!$. Find polynomials $P(x)$ and $Q(x)$ such that $f(n+2)=P(n)f(n+1)+Q(n)f(n)$ for all $n \geq 1$.
-/
theorem putnam_1984_b1
(f : ℕ → ℤ)
(hf : ∀ n > 0, f n = ∑ i : Set.Icc 1 n, ((i)! : ℤ))
: let (P, Q) := putnam_1984_b1_solution; ∀ n ≥ 1, f (n + 2) = P.eval (n : ℝ) * f (n + 1) + Q.eval (n : ℝ) * f n :=
sorry
