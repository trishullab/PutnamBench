import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

theorem putnam_1969_b5
(a : ℕ → ℝ)
(ha : StrictMono a ∧ (∀ x : ℕ, a > 0))
(hinvasum : ∃ C : ℝ, Tendsto (fun n => ∑ i : Fin n, 1/(a i)) atTop (𝓝 C))
(k : ℝ → ℕ)
(hk : k = fun x => {n | a n ≤ x}.ncard)
: Tendsto (fun t => (k t)/t) atTop (𝓝 0) :=
sorry
