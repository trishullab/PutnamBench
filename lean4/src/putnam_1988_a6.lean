import Mathlib

open Set Filter Topology

abbrev putnam_1988_a6_solution : Prop := sorry
-- True
/--
If a linear transformation $A$ on an $n$-dimensional vector space has $n+1$ eigenvectors such that any $n$ of them are linearly independent, does it follow that $A$ is a scalar multiple of the identity? Prove your answer.
-/
theorem putnam_1988_a6
: (∀ (F V : Type*) (_ : Field F) (_ : AddCommGroup V) (_ : Module F V) (_ : FiniteDimensional F V) (n : ℕ) (A : Module.End F V) (evecs : Set V), (n = Module.finrank F V ∧ evecs ⊆ {v : V | ∃ f : F, A.HasEigenvector f v} ∧ evecs.encard = n + 1 ∧ (∀ sevecs : Fin n → V, (Set.range sevecs ⊆ evecs ∧ (Set.range sevecs).encard = n) → LinearIndependent F sevecs)) → (∃ c : F, A = c • LinearMap.id)) ↔ putnam_1988_a6_solution :=
sorry
