import Mathlib

open Filter Topology

/--
Let $A$ and $B$ be $2 \times 2$ matrices with integer entries such that $A$, $A+B$, $A+2B$, $A+3B$, and $A+4B$ are all invertible matrices whose inverses have integer entries. Show that $A+5B$ is invertible and that its inverse has integer entries.
-/
theorem putnam_1994_a4
  (A B : Matrix (Fin 2) (Fin 2) ℤ)
  (ABinv : Nonempty (Invertible A) ∧
    Nonempty (Invertible (A + B)) ∧
    Nonempty (Invertible (A + 2 * B)) ∧
    Nonempty (Invertible (A + 3 * B)) ∧
    Nonempty (Invertible (A + 4 * B)))
  : Nonempty (Invertible (A + 5 * B)) :=
sorry
