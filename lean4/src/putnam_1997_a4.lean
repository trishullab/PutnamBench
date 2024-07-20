import Mathlib
open BigOperators

open Filter Topology

theorem putnam_1997_a4
(G : Type*)
[Group G]
(φ : G → G)
(hφ : ∀ g1 g2 g3 h1 h2 h3 : G, (g1 * g2 * g3 = 1 ∧ h1 * h2 * h3 = 1) → φ g1 * φ g2 * φ g3 = φ h1 * φ h2 * φ h3)
: ∃ a : G, let ψ := fun g => a * φ g; ∀ x y : G, ψ (x * y) = ψ x * ψ y :=
sorry
