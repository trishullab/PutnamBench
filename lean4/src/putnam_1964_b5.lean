import Mathlib
open BigOperators

open Set Function Filter Topology

theorem putnam_1964_b5
(a b : ℕ → ℕ)
(ha : StrictMono a ∧ ∀ n : ℕ, a n > 0)
(hb : b 0 = a 0 ∧ ∀ n : ℕ, b (n + 1) = lcm (b n) (a (n + 1)))
: (∃ L : ℝ, Tendsto (fun N ↦ ∑ n in Finset.range N, (1 : ℝ) / b n) atTop (𝓝 L)) :=
sorry
