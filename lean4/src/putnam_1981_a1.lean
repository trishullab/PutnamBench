import Mathlib
open BigOperators

open Topology Filter Set Polynomial Function

noncomputable abbrev putnam_1981_a1_solution : ℝ := sorry
-- 1/8
theorem putnam_1981_a1
(P : ℕ → ℕ → Prop)
(hP : P = fun n k : ℕ => 5^k ∣ ∏ m in Finset.Icc 1 n, (m^m : ℤ))
(E : ℕ → ℕ)
(hE : ∀ n ∈ Ici 1, P n (E n) ∧ ∀ k : ℕ, P n k → k ≤ E n)
: Tendsto (fun n : ℕ => ((E n) : ℝ)/n^2) atTop (𝓝 putnam_1981_a1_solution) :=
sorry
