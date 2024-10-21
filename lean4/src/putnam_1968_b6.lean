import Mathlib

open Finset Polynomial Topology Filter Metric

/--
Prove that no sequence $\{K_n\}_{n=0}^{\infty}$ of compact (closed and bounded) sets of rational numbers has the property that every compact set of rational numbers is contained by at least one $K_n$.
-/
theorem putnam_1968_b6
: ¬∃ K : ℕ → Set ℚ, (∀ n : ℕ, IsCompact (K n)) ∧ (∀ S : Set ℚ, IsCompact S → ∃ n : ℕ, S ⊆ K n) :=
sorry
