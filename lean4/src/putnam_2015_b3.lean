import Mathlib

abbrev putnam_2015_b3_solution : Set (Matrix (Fin 2) (Fin 2) ℝ) := sorry
-- {A : Matrix (Fin 2) (Fin 2) ℝ | (∃ α : ℝ, ∀ i j : Fin 2, A i j = α * 1) ∨ (∃ β : ℝ, A 0 0 = β * -3 ∧ A 0 1 = β * -1 ∧ A 1 0 = β * 1 ∧ A 1 1 = β * 3)}
/--
Let $S$ be the set of all $2 \times 2$ real matrices $M=\begin{pmatrix} a & b \\ c & d \end{pmatrix}$ whose entries $a,b,c,d$ (in that order) form an arithmetic progression. Find all matrices $M$ in $S$ for which there is some integer $k>1$ such that $M^k$ is also in $S$.
-/
theorem putnam_2015_b3
  (M : Matrix (Fin 2) (Fin 2) ℝ)
  (S : Set (Matrix (Fin 2) (Fin 2) ℝ))
  (hS : S = {M' | (M' 0 1 - M' 0 0 = M' 1 0 - M' 0 1) ∧ (M' 1 0 - M' 0 1 = M' 1 1 - M' 1 0)}) :
  (M ∈ S ∧ (∃ k > 1, M ^ k ∈ S)) ↔ M ∈ putnam_2015_b3_solution :=
sorry
