import Mathlib

open Topology Filter Polynomial Set

/--
Let $a$ and $b$ be real numbers in the interval $(0,1/2)$, and let $g$ be a continuous real-valued function such that $g(g(x))=ag(x)+bx$ for all real $x$. Prove that $g(x)=cx$ for some constant $c$.
-/
theorem putnam_2001_b5
(a b : ℝ)
(g : ℝ → ℝ)
(abint : 0 < a ∧ a < 1 / 2 ∧ 0 < b ∧ b < 1 / 2)
(gcont : Continuous g)
(hg : ∀ x : ℝ, g (g x) = a * g x + b * x)
: ∃ c : ℝ, ∀ x : ℝ, g x = c * x :=
sorry
