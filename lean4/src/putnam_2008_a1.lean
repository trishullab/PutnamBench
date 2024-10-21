import Mathlib

/--
Let $f:\mathbb{R}^2 \to \mathbb{R}$ be a function such that $f(x,y)+f(y,z)+f(z,x)=0$ for all real numbers $x$, $y$, and $z$. Prove that there exists a function $g:\mathbb{R} \to \mathbb{R}$ such that $f(x,y)=g(x)-g(y)$ for all real numbers $x$ and $y$.
-/
theorem putnam_2008_a1
(f : ℝ → ℝ → ℝ)
(hf : ∀ x y z : ℝ, f x y + f y z + f z x = 0)
: ∃ g : ℝ → ℝ, ∀ x y : ℝ, f x y = g x - g y :=
sorry
