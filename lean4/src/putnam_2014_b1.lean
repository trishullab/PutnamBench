import Mathlib

open Topology Filter Nat

abbrev putnam_2014_b1_solution : Set ℕ := sorry
-- {n : ℕ | n > 0 ∧ ¬∃ a ∈ digits 10 n, a = 0}
/--
A \emph{base $10$ over-expansion} of a positive integer $N$ is an expression of the form
\[
N = d_k 10^k + d_{k-1} 10^{k-1} + \cdots + d_0 10^0
\]
with $d_k \neq 0$ and $d_i \in \{0,1,2,\dots,10\}$ for all $i$. For instance, the integer $N = 10$ has two base $10$ over-expansions: $10 = 10 \cdot 10^0$ and the usual base $10$ expansion $10 = 1 \cdot 10^1 + 0 \cdot 10^0$. Which positive integers have a unique base $10$ over-expansion?
-/
theorem putnam_2014_b1
(overexpansion : ℕ → List ℕ → Prop)
(hoverexpansion : overexpansion = fun N d ↦ N = ∑ i : Fin d.length, (d.get i) * 10 ^ i.1 ∧ d.getLastI ≠ 0 ∧ ∀ a ∈ d, a ∈ Finset.range 11)
(S : Set ℕ)
(hS : ∀ N : ℕ, N ∈ S ↔ N > 0 ∧ ∃! d : List ℕ, overexpansion N d)
: (S = putnam_2014_b1_solution) :=
sorry
