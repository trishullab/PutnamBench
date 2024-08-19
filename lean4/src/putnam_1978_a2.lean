import Mathlib
open BigOperators

theorem putnam_1978_a2
(n : ℕ)
(npos : n > 0)
(a b : ℝ)
(hab : a ≠ b)
(c : Fin n → ℝ)
(A : Matrix (Fin n) (Fin n) ℝ)
(hA : A = fun i j ↦ ite (i < j) a (ite (i > j) b (c i)))
(p : ℝ → ℝ)
(hp : p = fun x ↦ ∏ i : Fin n, (c i - x))
: (A.det = ((b * p a - a * p b) / (b - a))) :=
sorry
