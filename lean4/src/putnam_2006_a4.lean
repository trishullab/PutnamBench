import Mathlib
open BigOperators

-- Note: uses (ℕ → ℕ) instead of (Equiv.Perm (Fin n))
noncomputable abbrev putnam_2006_a4_solution : ℕ → ℝ := sorry
-- (fun n : ℕ => (n + 1) / 3)
theorem putnam_2006_a4
(n : ℕ)
(pnat : Equiv.Perm (Fin n) → (ℕ → ℕ))
(pcount : Equiv.Perm (Fin n) → ℕ)
(ngt1 : n > 1)
(hpnat : ∀ p : Equiv.Perm (Fin n), ∀ k : Fin n, (pnat p) k = p k)
(hpcount : ∀ p : Equiv.Perm (Fin n), pcount p = {k : Fin n | (k.1 = 0 ∨ (pnat p) (k - 1) < (pnat p) k) ∧ (k = n - 1 ∨ (pnat p) k > (pnat p) (k + 1))}.encard)
: (∑ p : Equiv.Perm (Fin n), pcount p) / {p : Equiv.Perm (Fin n) | true}.ncard = putnam_2006_a4_solution n :=
sorry
