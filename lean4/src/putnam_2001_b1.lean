import Mathlib

open Topology Filter Polynomial Set

/--
Let $n$ be an even positive integer. Write the numbers $1,2,\ldots,n^2$ in the squares of an $n \times n$ grid so that the $k$-th row, from left to right, is $(k-1)n+1,(k-1)n+2,\ldots,(k-1)n+n$. Color the squares of the grid so that half of the squares in each row and in each column are red and the other half are black (a checkerboard coloring is one possibility). Prove that for each coloring, the sum of the numbers on the red squares is equal to the sum of the numbers on the black squares.
-/
theorem putnam_2001_b1
  (n : ℕ)
  (hn : n > 0) (hn' : Even n)
  (nums : Fin n → Fin n → ℤ)
  (colors : Fin n → Fin n → Fin 2)
  (hnums : ∀ k l, nums k l = k * n + l + 1)
  (hcolorsrows : ∀ k, (∑ l, (if (colors k l = 0) then 1 else 0)) = n / 2)
  (hcolorscols : ∀ l, (∑ k, (if (colors k l = 0) then 1 else 0)) = n / 2) :
  (∑ k, ∑ l, (if (colors k l = 0) then (nums k l) else 0)) = (∑ k, ∑ l, (if (colors k l = 1) then (nums k l) else 0)) :=
sorry
