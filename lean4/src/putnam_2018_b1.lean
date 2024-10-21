import Mathlib

abbrev putnam_2018_b1_solution : Set (Mathlib.Vector ℤ 2) := sorry
-- {v : Mathlib.Vector ℤ 2 | ∃ b : ℤ, 0 ≤ b ∧ b ≤ 100 ∧ Even b ∧ v.toList = [1, b]}
/--
Let $\mathcal{P}$ be the set of vectors defined by $\mathcal{P}=\left\{\left.\begin{pmatrix} a \\ b \end{pmatrix}\right| 0 \leq a \leq 2, 0 \leq b \leq 100,\text{ and }a,b \in \mathbb{Z}\right\}$. Find all $\mathbf{v} \in \mathcal{P}$ such that the set $\mathcal{P} \setminus \{\mathbf{v}\}$ obtained by omitting vector $\mathbf{v}$ from $\mathcal{P}$ can be partitioned into two sets of equal size and equal sum.
-/
theorem putnam_2018_b1
(P : Finset (Mathlib.Vector ℤ 2))
(v : Mathlib.Vector ℤ 2)
(vinP : Prop)
(Pvdiff : Finset (Mathlib.Vector ℤ 2))
(Pvpart : Prop)
(hP : P = {v' : Mathlib.Vector ℤ 2 | 0 ≤ v'[0] ∧ v'[0] ≤ 2 ∧ 0 ≤ v'[1] ∧ v'[1] ≤ 100})
(hvinP : vinP = (v ∈ P))
(hPvdiff : Pvdiff = P \ ({v} : Finset (Mathlib.Vector ℤ 2)))
(hPvpart : Pvpart = (∃ Q R : Finset (Mathlib.Vector ℤ 2), (Q ∪ R = Pvdiff) ∧ (Q ∩ R = ∅) ∧ (Q.card = R.card) ∧ (∑ q in Q, q[0] = ∑ r in R, r[0]) ∧ (∑ q in Q, q[1] = ∑ r in R, r[1])))
: (vinP ∧ Pvpart) ↔ v ∈ putnam_2018_b1_solution :=
sorry
