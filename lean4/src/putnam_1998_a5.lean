import Mathlib

open Set Function Metric

/--
Let $\mathcal F$ be a finite collection of open discs in $\mathbb R^2$ whose union contains a set $E\subseteq \mathbb R^2$.  Show that there is a pairwise disjoint subcollection $D_1,\ldots, D_n$ in $\mathcal F$ such that \[E\subseteq \cup_{j=1}^n 3D_j.\] Here, if $D$ is the disc of radius $r$ and center $P$, then $3D$ is the disc of radius $3r$ and center $P$.
-/
theorem putnam_1998_a5
  (k : ℕ)
  (c : Fin k → (EuclideanSpace ℝ (Fin 2)))
  (r : Fin k → ℝ)
  (hr : ∀ i, r i > 0)
  (E : Set (EuclideanSpace ℝ (Fin 2)))
  (hE : E ⊆ ⋃ i, ball (c i) (r i)) :
  ∃ (n : ℕ) (t : Fin n → Fin k),
    (∀ i j, i ≠ j → (ball (c (t i)) (r (t i)) ∩ ball (c (t j)) (r (t j)) = ∅)) ∧
    E ⊆ ⋃ i : Fin n, ball (c (t i)) (3 * (r (t i))) :=
sorry
