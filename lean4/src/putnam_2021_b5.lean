import Mathlib
open BigOperators

open Filter Topology

theorem putnam_2021_b5
(n : ℕ)
(veryodd : Matrix (Fin n) (Fin n) ℤ → Prop := (fun A : Matrix (Fin n) (Fin n) ℤ => ∀ m ∈ Set.Icc 1 n, ∀ reind : Fin m → Fin n, Function.Injective reind → Odd (A.submatrix reind reind).det))
(npos : n ≥ 1)
: ∀ A : Matrix (Fin n) (Fin n) ℤ, veryodd A → (∀ k ≥ 1, veryodd (A ^ k)) :=
sorry
