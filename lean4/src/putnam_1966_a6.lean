import Mathlib

open Topology Filter

/--
Prove that $$\sqrt {1 + 2 \sqrt {1 + 3 \sqrt {1 + 4 \sqrt {1 + 5 \sqrt {\dots}}}}} = 3.$$
-/
theorem putnam_1966_a6
(a : ℕ → (ℕ → ℝ))
(ha : ∀ n ≥ 1, a n n = n ∧ ∀ m ≥ 1, m < n → a n m = m * Real.sqrt (1 + a n (m + 1)))
: Tendsto (fun n => a n 1) atTop (𝓝 3) :=
sorry
