import Mathlib

open Topology Filter

noncomputable abbrev putnam_2011_a2_solution : ℝ := sorry
-- 3/2
/--
Let $a_1,a_2,\dots$ and $b_1,b_2,\dots$ be sequences of positive real numbers such that $a_1 = b_1 = 1$ and $b_n = b_{n-1} a_n - 2$ for$n=2,3,\dots$. Assume that the sequence $(b_j)$ is bounded. Prove tha \[ S = \sum_{n=1}^\infty \frac{1}{a_1...a_n} \] converges, and evaluate $S$.
-/
theorem putnam_2011_a2
(a b : ℕ → ℝ)
(habn : ∀ n : ℕ, a n > 0 ∧ b n > 0)
(hab1 : a 0 = 1 ∧ b 0 = 1)
(hb : ∀ n ≥ 1, b n = b (n-1) * a n - 2)
(hbnd : ∃ B : ℝ, ∀ n : ℕ, |b n| ≤ B)
: Tendsto (fun n => ∑ i : Fin n, 1/(∏ j : Fin (i + 1), (a j))) atTop (𝓝 putnam_2011_a2_solution) :=
sorry
