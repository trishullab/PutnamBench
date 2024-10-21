import Mathlib

open Set Function Filter Topology

/--
Let $S$ be a finite set. A set $P$ of subsets of $S$ has the property that any two members of $P$ have at least one element in common and that $P$ cannot be extended (whilst keeping this property). Prove that $P$ contains exactly half of the subsets of $S$.
-/
theorem putnam_1964_b2
(S : Type*) [Fintype S] [Nonempty S]
(P : Finset (Set S))
(hPP : ∀ T ∈ P, ∀ U ∈ P, T ∩ U ≠ ∅)
(hPS : ¬∃ T : Set S, T ∉ P ∧ (∀ U ∈ P, T ∩ U ≠ ∅))
: (P.card = 2 ^ (Fintype.card S - 1)) :=
sorry
