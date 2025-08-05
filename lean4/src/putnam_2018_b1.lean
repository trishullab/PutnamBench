import Mathlib

abbrev putnam_2018_b1_solution : Set (Fin 2 → ℤ) := sorry
-- {v : Fin 2 → ℤ | ∃ b : ℤ, 0 ≤ b ∧ b ≤ 100 ∧ Even b ∧ v = ![1, b]}

/--
Let $\mathcal{P}$ be the set of vectors defined by $\mathcal{P}=\left\{\left.\begin{pmatrix} a \\ b \end{pmatrix}\right| 0 \leq a \leq 2, 0 \leq b \leq 100,\text{ and }a,b \in \mathbb{Z}\right\}$. Find all $\mathbf{v} \in \mathcal{P}$ such that the set $\mathcal{P} \setminus \{\mathbf{v}\}$ obtained by omitting vector $\mathbf{v}$ from $\mathcal{P}$ can be partitioned into two sets of equal size and equal sum.
-/
theorem putnam_2018_b1
(P Pvdiff : Finset (Fin 2 → ℤ))
(v : Fin 2 → ℤ)
(hP : P = {v' : Fin 2 → ℤ | 0 ≤ v' 0 ∧ v' 0 ≤ 2 ∧ 0 ≤ v' 1 ∧ v' 1 ≤ 100})
(hPvdiff : Pvdiff = P \ ({v} : Finset (Fin 2 → ℤ)))
: (v ∈ P ∧ (∃ Q R : Finset (Fin 2 → ℤ),
    (Q ∪ R = Pvdiff) ∧ (Q ∩ R = ∅) ∧ (Q.card = R.card) ∧
    (∑ q ∈ Q, q 0 = ∑ r ∈ R, r 0) ∧ (∑ q ∈ Q, q 1 = ∑ r ∈ R, r 1)))
  ↔ v ∈ putnam_2018_b1_solution :=
sorry
