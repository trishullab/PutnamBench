import Mathlib

open Topology Filter Nat Set Function

/--
Let $f(x)$ be a continuous function such that $f(2x^2-1)=2xf(x)$ for all $x$.  Show that $f(x)=0$ for $-1\leq x\leq 1$.
-/
theorem putnam_2000_b4
(f : ℝ → ℝ)
(hfcont : Continuous f)
(hf : ∀ x, f (2 * x ^ 2 - 1) = 2 * x * f x)
: ∀ x, x ∈ Icc (-1) 1 → f x = 0 :=
sorry
