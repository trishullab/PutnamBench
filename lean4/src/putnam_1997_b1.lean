import Mathlib

open Filter Topology

abbrev putnam_1997_b1_solution : ℕ → ℝ := sorry
-- fun n => n
noncomputable def dist_to_int : ℝ → ℝ := fun r => |r - round r|
/--
Let $\{x\}$ denote the distance between the real number $x$ and the nearest integer.  For each positive integer $n$, evaluate \[F_n=\sum_{m=1}^{6n-1} \min(\{\frac{m}{6n}\},\{\frac{m}{3n}\}).\] (Here $\min(a,b)$ denotes the minimum of $a$ and $b$.)
-/
theorem putnam_1997_b1
(F : ℕ → ℝ)
(hF : F = fun (n : ℕ) => ∑ m ∈ Finset.Icc 1 (6 * n - 1), min (dist_to_int (m/(6*n)) ) (dist_to_int (m/(3*n))))
: ∀ n, n > 0 → F n = putnam_1997_b1_solution n :=
sorry
