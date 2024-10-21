import Mathlib

open Set Nat Polynomial

abbrev putnam_1974_b1_solution : (Fin 5 → EuclideanSpace ℝ (Fin 2)) → Prop := sorry
-- fun p ↦ ∃ᵉ (B > 0) (o : Equiv.Perm (Fin 5)), ∀ i, dist (p (o i)) (p (o (i + 1))) = B

/--
Prove that the optimal configuration of 5 (not necessarily distinct) points $p_1, \dots, p_5$ on the unit circle which maximizes the sum of the ten distances \[\Sigma_{i < j}, d(p_i, p_j) \] is the one which evenly spaces the points like a regular pentagon.
-/
theorem putnam_1974_b1
    (d : (Fin 5 → EuclideanSpace ℝ (Fin 2)) → ℝ)
    (d_def : ∀ p, d p = ∑ ⟨i, j⟩ : Fin 5 × Fin 5, if i < j then dist (p i) (p j) else 0)
    (p : Fin 5 → EuclideanSpace ℝ (Fin 2))
    (hp : ∀ i, ‖p i‖ = 1) :
    d p = sSup {d q | (q) (hq : ∀ i, ‖q i‖ = 1)} ↔ putnam_1974_b1_solution p :=
  sorry
