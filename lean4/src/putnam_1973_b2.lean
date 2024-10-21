import Mathlib

open Nat Set MeasureTheory Topology Filter

/--
Let $z = x+iy$ be a complex number with $x$ and $y$ rational and with $\| z \| = 1$. Show thaat the number $\| z^{2n} - 1 \|$ is rational for every integer $n$.
-/
theorem putnam_1973_b2
(z : ℂ)
(hzrat : ∃ q1 q2 : ℚ, z.re = q1 ∧ z.im = q2)
(hznorm : ‖z‖ = 1)
: ∀ n : ℤ, ∃ q : ℚ, ‖z^(2*n) - 1‖ = q :=
sorry
