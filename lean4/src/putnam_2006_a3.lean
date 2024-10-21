import Mathlib

/--
Let $1, 2, 3, \dots, 2005, 2006, 2007, 2009, 2012, 2016, \dots$ be a sequence defined by $x_k = k$ for $k=1, 2, \dots, 2006$ and $x_{k+1} = x_k + x_{k-2005}$ for $k \geq 2006$. Show that the sequence has $2005$ consecutive terms each divisible by $2006$.
-/
theorem putnam_2006_a3
(x : ℤ → ℤ)
(hxlo : ∀ k : ℤ, 0 ≤ k ∧ k ≤ 2006 → x k = k)
(hxhi : ∀ k : ℤ, k ≥ 2006 → x (k + 1) = x k + x (k - 2005))
: (∃ i : ℕ, i > 0 ∧ ∀ j : Finset.range 2005, 2006 ∣ x (i + j)) :=
sorry
