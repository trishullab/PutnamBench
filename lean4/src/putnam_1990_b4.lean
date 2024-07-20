import Mathlib
open BigOperators

open Filter Topology Nat

-- Note: uses (ℕ → G) instead of (Fin (2 * n) → G)
abbrev putnam_1990_b4_solution : Prop := sorry
-- True
theorem putnam_1990_b4
: (∀ (G : Type*) (_ : Fintype G) (_ : Group G) (n : ℕ) (a b : G), (n = Fintype.card G ∧ a ≠ b ∧ G = Subgroup.closure {a, b}) → (∃ g : ℕ → G, (∀ x : G, {i : Fin (2 * n) | g i = x}.encard = 2)
  ∧ (∀ i : Fin (2 * n), (g ((i + 1) % (2 * n)) = g i * a) ∨ (g ((i + 1) % (2 * n)) = g i * b))) ↔ putnam_1990_b4_solution) :=
sorry
