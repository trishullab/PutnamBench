import Mathlib
open BigOperators

open Topology Filter Polynomial Set

theorem putnam_2001_b1
(n : ℕ)
(nums : Fin n → Fin n → ℤ)
(colors : Fin n → Fin n → Fin 2)
(npos : n > 0)
(neven : Even n)
(hnums : ∀ k l : Fin n, nums k l = k * n + l + 1)
(hcolorsrows : ∀ k : Fin n, (∑ l : Fin n, (if (colors k l = 0) then 1 else 0)) = n / 2)
(hcolorscols : ∀ l : Fin n, (∑ k : Fin n, (if (colors k l = 0) then 1 else 0)) = n / 2)
: (∑ k : Fin n, ∑ l : Fin n, (if (colors k l = 0) then (nums k l) else 0)) = (∑ k : Fin n, ∑ l : Fin n, (if (colors k l = 1) then (nums k l) else 0)) :=
sorry
