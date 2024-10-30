import Mathlib

open Topology Filter

/--
Let $L_1$ and $L_2$ be distinct lines in the plane. Prove that $L_1$ and $L_2$ intersect if and only if, for every real number $\lambda \neq 0$ and every point $P$ not on $L_1$ or $L_2$, there exist points $A_1$ on $L_1$ and $A_2$ on $L_2$ such that $\overrightarrow{PA_2}=\lambda \overrightarrow{PA_1}$.
-/
theorem putnam_2017_b1
  (lines : Set (Set (Fin 2 → ℝ)))
  (L1 L2 : Set (Fin 2 → ℝ))
  (L1L2lines : L1 ∈ lines ∧ L2 ∈ lines)
  (L1L2distinct : L1 ≠ L2)
  (hlines : lines = {L | ∃ v w : Fin 2 → ℝ, w ≠ 0 ∧ L = {p | ∃ t : ℝ, p = v + t • w}}) :
  L1 ∩ L2 ≠ ∅ ↔ (∀ lambda : ℝ, lambda ≠ 0 →
    ∀ P, (P ∉ L1 ∧ P ∉ L2) → ∃ A1 A2, A1 ∈ L1 ∧ A2 ∈ L2 ∧ (A2 - P = lambda • (A1 - P))) :=
sorry
