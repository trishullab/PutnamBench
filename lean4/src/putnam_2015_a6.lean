import Mathlib
open BigOperators

theorem putnam_2015_a6
(n : ℕ)
(A B M : Matrix (Fin n) (Fin n) ℝ)
(npos : n > 0)
(hmul : A * M = M * B)
(hpoly : Matrix.charpoly A = Matrix.charpoly B)
: ∀ X : Matrix (Fin n) (Fin n) ℝ, (A - M * X).det = (B - X * M).det :=
sorry
