import Mathlib
open BigOperators

open Topology Filter Set Polynomial Function

theorem putnam_1981_b3
(P : ℕ → Prop)
(hP : P = fun n : ℕ => ∀ p : ℕ, (Nat.Prime p ∧ p ∣ n^2 + 3) → ∃ k : ℕ, (p : ℤ) ∣ (k : ℤ)^2 + 3 ∧ k^2 < n)
: ∀ n : ℕ, ∃ m : ℕ, (m : ℤ) > n ∧ P m :=
sorry
