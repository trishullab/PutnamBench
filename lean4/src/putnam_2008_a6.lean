import Mathlib

open Filter Topology Set

/--
Prove that there exists a constant $c>0$ such that in every nontrivial finite group $G$ there exists a sequence of length at most $c \log |G|$ with the property that each element of $G$ equals the product of some subsequence. (The elements of $G$ in the sequence are not required to be distinct. A \emph{subsequence} of a sequence is obtained by selecting some of the terms, not necessarily consecutive, without reordering them; for example, $4, 4, 2$ is a subsequence of $2, 4, 6, 4, 2$, but $2, 2, 4$ is not.)
-/
theorem putnam_2008_a6
: ∃ c : ℝ, c > 0 ∧ ∀ G [Group G] (fing : Fintype G), fing.card > 1 → ∃ s : List G, s.length ≤ c * Real.log (fing.card : ℝ) ∧ ∀ g : G, ∃ t : List G, t.Sublist s ∧ t.prod = g :=
sorry
