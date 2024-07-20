import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

theorem putnam_1969_a6
(x : ℕ → ℝ)
(y : ℕ → ℝ)
(hy1 : ∀ n ≥ 2, y n = x (n-1) + 2 * (x n))
(hy2 : ∃ c : ℝ, Tendsto y atTop (𝓝 c))
: ∃ C : ℝ, Tendsto x atTop (𝓝 C) :=
sorry
