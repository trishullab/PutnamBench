import Mathlib

/--
Let $f: \mathbb{R} \to \mathbb{R}$ be an infinitely differentiable function satisfying $f(0) = 0$, $f(1)= 1$, and $f(x) \geq 0$ for all $x \in \mathbb{R}$. Show that there exist a positive integer $n$ and a real number $x$ such that $f^{(n)}(x) < 0$.
-/
theorem putnam_2018_a5
(f : ℝ → ℝ)
(h0 : f 0 = 0)
(h1 : f 1 = 1)
(hpos : ∀ x : ℝ, f x ≥ 0)
(hf : ContDiff ℝ ⊤ f)
: ∃ n > 0, ∃ x : ℝ, iteratedDeriv n f x < 0 :=
sorry
