import Mathlib

/--
Let $S$ be a set of real numbers which is closed under multiplication (that is, if $a$ and $b$ are in $S$, then so is $ab$). Let $T$ and $U$ be disjoint subsets of $S$ whose union is $S$. Given that the product of any {\em three} (not necessarily distinct) elements of $T$ is in $T$ and that the product of any three elements of $U$ is in $U$, show that at least one of the two subsets $T,U$ is closed under multiplication.
-/
theorem putnam_1995_a1
(S : Set ℝ)
(hS : ∀ a ∈ S, ∀ b ∈ S, a * b ∈ S)
(T U : Set ℝ)
(hsub : T ⊆ S ∧ U ⊆ S)
(hunion : T ∪ U = S)
(hdisj : T ∩ U = ∅)
(hT3 : ∀ a ∈ T, ∀ b ∈ T, ∀ c ∈ T, a * b * c ∈ T)
(hU3 : ∀ a ∈ U, ∀ b ∈ U, ∀ c ∈ U, a * b * c ∈ U)
: (∀ a ∈ T, ∀ b ∈ T, a * b ∈ T) ∨ (∀ a ∈ U, ∀ b ∈ U, a * b ∈ U) :=
sorry
