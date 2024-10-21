import Mathlib

open Topology Filter Set Matrix

abbrev putnam_2019_b5_solution : ℕ × ℕ := sorry
-- ⟨2019, 1010⟩
/--
Let $F_m$ be the $m$th Fibonacci number, defined by $F_1 = F_2 = 1$ and $F_m = F_{m-1} + F_{m-2}$ for all $m \geq 3$. Let $p(x)$ be the polynomial of degree $1008$ such that $p(2n + 1) = F_{2n+1}$ for $n = 0,1,2,\ldots,1008$. Find integers $j$ and $k$ such that $p(2019) = F_j - F_k$.
-/
theorem putnam_2019_b5
(F : ℕ → ℤ)
(P : Polynomial ℝ)
(hF : ∀ x, x ≥ 1 → F (x + 2) = F (x + 1) + F x)
(F12 : F 1 = 1 ∧ F 2 = 1)
(Pdeg: Polynomial.degree P = 1008)
(hp: ∀ n : ℕ, (n ≤ 1008) → P.eval (2 * n + 1 : ℝ) = F (2 * n + 1))
: ∀ j k : ℕ, (P.eval 2019 = F j - F k) ↔ ⟨j, k⟩ = putnam_2019_b5_solution  :=
sorry
