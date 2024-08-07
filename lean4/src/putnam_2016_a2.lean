import Mathlib
open BigOperators

open Polynomial Filter Topology Real Set Nat

noncomputable abbrev putnam_2016_a2_solution : ℝ := sorry
-- (3 + sqrt 5) / 2
theorem putnam_2016_a2
(p : ℕ → ℕ → Prop)
(hp : p = fun n ↦ fun m ↦ Nat.choose m (n - 1) > Nat.choose (m - 1) n)
(M : ℕ → ℕ)
(hpM : ∀ n : ℕ, p n (M n))
(hMub : ∀ n : ℕ, ∀ m : ℕ, p n m → m ≤ M n)
: (Tendsto (fun n ↦ ((M n : ℝ) / (n : ℝ))) atTop (𝓝 putnam_2016_a2_solution)) :=
sorry
