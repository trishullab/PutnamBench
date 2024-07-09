import Mathlib
open BigOperators

open Set Filter Topology

theorem putnam_1988_b4
(a : ℕ → ℝ)
(appos : (ℕ → ℝ) → Prop)
(apconv : (ℕ → ℝ) → Prop)
(apposconv : (ℕ → ℝ) → Prop)
(happos : ∀ a' : ℕ → ℝ, appos a' = ∀ n ≥ 1, a' n > 0)
(hapconv : ∀ a' : ℕ → ℝ, apconv a' = ∃ s : ℝ, Tendsto (fun N : ℕ => ∑ n : Set.Icc 1 N, a' n) atTop (𝓝 s))
(happosconv : ∀ a' : ℕ → ℝ, apposconv a' = (appos a' ∧ apconv a'))
: apposconv a → apposconv (fun n : ℕ => (a n) ^ ((n : ℝ) / (n + 1))) :=
sorry
