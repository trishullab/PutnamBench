import Mathlib

open List

#check List

abbrev putnam_2024_a4_solution : Set ℕ := sorry
theorem putnam_2024_a4
  (IsRearrangeableWith : ℕ → ℤ → ℤ → Prop)
  (IsRearrangeableWith_def : ∀ (p : ℕ) (a r : ℤ),
    IsRearrangeableWith p a r ↔
      ∃ b : List ℤ,
        b ~ (map (fun i => a^i) (range (p - 5 + 1))) ∧
        b.Chain' (fun s t ↦ (p : ℤ) ∣ t - s - r)
  ) :
    {p : ℕ |
      Nat.Prime p ∧ 5 < p ∧
      ∃ a r : ℤ,
        1 ≤ r ∧ r ≤ p - 1 ∧
        IsRearrangeableWith p a r}
    = putnam_2024_a4_solution :=
sorry
