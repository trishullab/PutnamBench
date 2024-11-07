import Mathlib

/--
The infinite sequence of $2$'s and $3$'s $2,3,3,2,3,3,3,2,3,3,3,2,3,3,2,3,3,3,2,3,3,3,2,3,3,3,2,3,3,2,3,3,3,2,\dots$ has the property that, if one forms a second sequence that records the number of $3$'s between successive $2$'s, the result is identical to the given sequence. Show that there exists a real number $r$ such that, for any $n$, the $n$th term of the sequence is $2$ if and only if $n=1+\lfloor rm \rfloor$ for some nonnegative integer $m$. (Note: $\lfloor x \rfloor$ denotes the largest integer less than or equal to $x$.)
-/
theorem putnam_1993_a6
(seq : ℕ → ℤ)
(hseq23 : ∀ n, seq n = 2 ∨ seq n = 3)
(hseq2inds : ∀ n, seq n = 2 ↔ (∃ N : ℕ, n = ∑ i : Fin N, (seq i + 1)))
: ∃ r : ℝ, ∀ n, seq n = 2 ↔ (∃ m : ℤ, n + 1 = 1 + Int.floor (r * m)) :=
sorry
