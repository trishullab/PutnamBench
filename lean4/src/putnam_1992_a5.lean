import Mathlib

open Topology Filter Nat Function

/--
For each positive integer $n$, let $a_n = 0$ (or $1$) if the number of $1$'s in the binary representation of $n$ is even (or odd), respectively. Show that there do not exist positive integers $k$ and $m$ such that
\[
a_{k+j} = a_{k+m+j} = a_{k+2m+j},
\]
for $0 \leq j \leq m-1$.
-/
theorem putnam_1992_a5
  (a : ℕ → ℕ)
  (ha : a = fun n ↦ ite (Even {i | (digits 2 n).get i = 1}.ncard) 0 1) :
  ¬∃ k > 0, ∃ m > 0, ∀ j ≤ m - 1,
    a (k + j) = a (k + m + j) ∧ a (k + m + j) = a (k + 2 * m + j) :=
sorry
