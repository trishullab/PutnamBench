import Mathlib
open BigOperators

open Filter Topology

theorem putnam_1994_a4
(A B : Matrix (Fin 2) (Fin 2) ℤ)
(ABinv : Nonempty (Invertible A) ∧ Nonempty (Invertible (A + B)) ∧ Nonempty (Invertible (A + 2 * B)) ∧ Nonempty (Invertible (A + 3 * B)) ∧ Nonempty (Invertible (A + 4 * B)))
: Nonempty (Invertible (A + 5 * B)) :=
sorry
