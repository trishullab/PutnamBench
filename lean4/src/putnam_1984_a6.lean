import Mathlib
open BigOperators

open Topology Filter Function Nat

-- Note: uses `0` to indicate not periodic.
abbrev putnam_1984_a6_solution : ℕ := sorry
-- 4
theorem putnam_1984_a6
    (f : ℕ → ℕ)
    (hf : ∀ n, some (f n) = (Nat.digits 10 (n !)).find? (fun d ↦ d ≠ 0))
    (P : (ℕ → ℕ) → ℕ → Prop)
    (P_def : ∀ g p, P g p ↔
      if p = 0 then (∀ q > 0, ¬ Periodic g q) else IsLeast {q | 0 < q ∧ Periodic g q} p) :
    ∃ g : ℕ → ℕ,
      (∀ᵉ (k > 0) (a : Fin k → ℕ) (ha : Injective a), f (∑ i, 5 ^ (a i)) = g (∑ i, a i)) ∧
      P g putnam_1984_a6_solution :=
  sorry
