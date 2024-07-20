import Mathlib
open BigOperators

open Topology Filter Real Function Nat

abbrev putnam_2017_b6_solution : ℕ := sorry
-- 2016! / 1953! - 63! * 2016
theorem putnam_2017_b6
(S : Finset (Finset.range 64 → Finset.Icc 1 2017))
(hs : ∀ x : (Finset.range 64 → Finset.Icc 1 2017), x ∈ S ↔ (Injective x ∧ (2017 ∣ (∑ i : Finset.range 64, if i ≤ (⟨1, by norm_num⟩ : Finset.range 64) then (x i : ℤ) else i * (x i : ℤ)))))
: (S.card = putnam_2017_b6_solution) :=
sorry
