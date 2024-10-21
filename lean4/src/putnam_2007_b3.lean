import Mathlib

open Set Nat Function

noncomputable abbrev putnam_2007_b3_solution : ℝ := sorry
-- (2 ^ 2006 / Real.sqrt 5) * (((1 + Real.sqrt 5) / 2) ^ 3997 - ((1 + Real.sqrt 5) / 2) ^ (-3997 : ℤ))
/--
Let $x_0 = 1$ and for $n \geq 0$, let $x_{n+1} = 3x_n + \lfloor x_n \sqrt{5} \rfloor$. In particular, $x_1 = 5$, $x_2 = 26$, $x_3 = 136$, $x_4 = 712$. Find a closed-form expression for $x_{2007}$. ($\lfloor a \rfloor$ means the largest integer $\leq a$.)
-/
theorem putnam_2007_b3
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hx : ∀ n : ℕ, x (n + 1) = 3 * (x n) + ⌊(x n) * Real.sqrt 5⌋)
: (x 2007 = putnam_2007_b3_solution) :=
sorry
