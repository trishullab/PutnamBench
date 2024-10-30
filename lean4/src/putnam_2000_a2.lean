import Mathlib

open Topology Filter

/--
Prove that there exist infinitely many integers $n$ such that $n,n+1,n+2$ are each the sum of the squares of two integers.
-/
theorem putnam_2000_a2 :
  ∀ n : ℕ,
    ∃ N : ℤ,
      ∃ i : Fin 6 → ℕ,
        N > n ∧
        N = (i 0)^2 + (i 1)^2 ∧
        N + 1 = (i 2)^2 + (i 3)^2 ∧
        N + 2 = (i 4)^2 + (i 5)^2 :=
  sorry
