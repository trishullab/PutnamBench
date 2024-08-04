import Mathlib
open BigOperators

open Filter Topology

theorem putnam_1994_b5
(f : ℝ → ℤ → ℤ)
(n : ℕ)
(hf : ∀ (α : ℝ) (x : ℤ), f α x = Int.floor (α * x))
(npos : n > 0)
: ∃ α : ℝ, ∀ k ∈ Set.Icc 1 n, ((f α)^[k] (n ^ 2) = n ^ 2 - k) ∧ (f (α ^ k) (n ^ 2) = n ^ 2 - k) :=
sorry
