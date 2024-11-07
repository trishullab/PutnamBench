import Mathlib

open Real Set Nat

noncomputable abbrev putnam_2016_b4_solution : ℕ → ℝ := sorry
-- (fun n : ℕ => (2 * n)! / (4 ^ n * (n)!))
/--
Let $A$ be a $2n \times 2n$ matrix, with entries chosen independently at random. Every entry is chosen to be $0$ or $1$, each with probability $1/2$. Find the expected value of $\det(A-A^t)$ (as a function of $n$), where $A^t$ is the transpose of $A$.
-/
theorem putnam_2016_b4
  (n : ℕ) (npos : n ≥ 1)
  (mats01 : Set (Matrix (Fin (2 * n)) (Fin (2 * n)) ℝ))
  (hmats01 : mats01 = {A | ∀ i j : Fin (2 * n), A i j = 0 ∨ A i j = 1}) :
  (∑' A : mats01, (A.1 - (Matrix.transpose A)).det) / mats01.ncard = putnam_2016_b4_solution n :=
sorry
