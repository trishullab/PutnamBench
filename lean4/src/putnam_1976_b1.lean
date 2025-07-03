import Mathlib

open Polynomial Filter Topology

abbrev putnam_1976_b1_solution : ℕ × ℕ := sorry
-- (4, 1)
/--
Find $$\lim_{n \to \infty} \frac{1}{n} \sum_{k=1}^{n}\left(\left\lfloor \frac{2n}{k} \right\rfloor - 2\left\lfloor \frac{n}{k} \right\rfloor\right).$$ Your answer should be in the form $\ln(a) - b$, where $a$ and $b$ are positive integers.
-/
theorem putnam_1976_b1
: Tendsto (fun n : ℕ => ((1 : ℝ)/n)*∑ k ∈ Finset.Icc (1 : ℤ) n, (Int.floor ((2*n)/k) - 2*Int.floor (n/k))) atTop
(𝓝 (Real.log putnam_1976_b1_solution.1 - putnam_1976_b1_solution.2)) :=
sorry
