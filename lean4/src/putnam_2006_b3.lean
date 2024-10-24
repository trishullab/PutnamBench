import Mathlib

abbrev putnam_2006_b3_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => (Nat.choose n 2) + 1)
/--
Let $S$ be a finite set of points in the plane. A linear partition of $S$ is an unordered pair $\{A,B\}$ of subsets of $S$ such that $A \cup B=S$, $A \cap B=\emptyset$, and $A$ and $B$ lie on opposite sides of some straight line disjoint from $S$ ($A$ or $B$ may be empty). Let $L_S$ be the number of linear partitions of $S$. For each positive integer $n$, find the maximum of $L_S$ over all sets $S$ of $n$ points.
-/
theorem putnam_2006_b3
    (IsLinearPartition : Finset (Fin 2 → ℝ) → Finset (Finset (Fin 2 → ℝ)) → Prop)
    (IsLinearPartition_def : ∀ S AB, IsLinearPartition S AB ↔
      (AB.card = 2 ∧ ∃ A ∈ AB, ∃ B ∈ AB,
        A ≠ B ∧ (A ∪ B = S) ∧ (A ∩ B = ∅) ∧
        (∃ m b : ℝ,
          (∀ p ∈ A, p 1 > m * p 0 + b) ∧
          (∀ p ∈ B, p 1 < m * p 0 + b))))
    (L : Finset (Fin 2 → ℝ) → ℕ)
    (hL : ∀ S, L S = {AB | IsLinearPartition S AB}.encard)
    (n : ℕ) (npos : 0 < n) :
    IsGreatest {L S | (S) (hS : S.card = n)} (putnam_2006_b3_solution n) :=
  sorry
