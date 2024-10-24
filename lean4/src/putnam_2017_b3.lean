import Mathlib

open Topology Filter

/--
Suppose that $f(x) = \sum_{i=0}^\infty c_i x^i$ is a power series for which each coefficient $c_i$ is $0$ or $1$. Show that if $f(2/3) = 3/2$, then $f(1/2)$ must be irrational.
-/
theorem putnam_2017_b3
(f : ℝ → ℝ)
(c : ℕ → ℝ)
(hc : ∀ n, c n = 0 ∨ c n = 1)
(hf : ∀ x, f x = ∑' n : ℕ, (c n) * x^n)
: f (2/3) = 3/2 → Irrational (f 1/2) :=
sorry
