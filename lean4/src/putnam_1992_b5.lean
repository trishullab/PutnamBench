import Mathlib

open Topology Filter Nat Function Polynomial

abbrev putnam_1992_b5_solution : Prop := sorry
-- False
/--
Let $D_n$ denote the value of the $(n-1) \times (n-1)$ determinant
\[
\left[
\begin{array}{cccccc}
3 & 1 & 1 & 1 & \cdots & 1 \\
1 & 4 & 1 & 1 & \cdots & 1 \\
1 & 1 & 5 & 1 & \cdots & 1 \\
1 & 1 & 1 & 6 & \cdots & 1 \\
\vdots & \vdots & \vdots & \vdots & \ddots & \vdots \\
1 & 1 & 1 & 1 & \cdots & n+1
\end{array}
\right].
\]
Is the set $\left\{ \frac{D_n}{n!} \right\}_{n \geq 2}$ bounded?
-/
theorem putnam_1992_b5
  (D : ℕ → ℚ)
  (hD : ∀ n, D n = Matrix.det (fun i j : Fin (n - 1) ↦ ite (i = j) ((i : ℕ) + 3 : ℚ) 1)) :
  putnam_1992_b5_solution ↔ (Bornology.IsBounded {x | ∃ n ≥ 2, D n / factorial n = x}) :=
sorry
