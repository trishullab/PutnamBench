import Mathlib

open Polynomial Real Complex Matrix Filter Topology Multiset

noncomputable abbrev putnam_1975_b3_solution : ℕ → ℝ := sorry
-- fun k : ℕ => 1/(Nat.factorial k)
/--
Let $s_k (a_1, a_2, \dots, a_n)$ denote the $k$-th elementary symmetric function; that is, the sum of all $k$-fold products of the $a_i$. For example, $s_1 (a_1, \dots, a_n) = \sum_{i=1}^{n} a_i$, and $s_2 (a_1, a_2, a_3) = a_1a_2 + a_2a_3 + a_1a_3$. Find the supremum $M_k$ (which is never attained) of $$\frac{s_k (a_1, a_2, \dots, a_n)}{(s_1 (a_1, a_2, \dots, a_n))^k}$$ across all $n$-tuples $(a_1, a_2, \dots, a_n)$ of positive real numbers with $n \ge k$.
-/
theorem putnam_1975_b3
: ∀ k : ℕ, k > 0 → (∀ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k →
(esymm a k)/(esymm a 1)^k ≤ putnam_1975_b3_solution k) ∧
∀ M : ℝ, M < putnam_1975_b3_solution k → (∃ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k ∧
(esymm a k)/(esymm a 1)^k > M) :=
sorry
