import Mathlib

open Nat Set

/--
For positive integers $m$ and $n$, let $f(m,n)$ denote the number of $n$-tuples $(x_1,x_2,\dots,x_n)$ of integers such that $|x_1|+|x_2|+\cdots+|x_n| \leq m$. Show that $f(m,n)=f(n,m)$.
-/
theorem putnam_2005_b4
(m n : ℤ)
(mnpos : m > 0 ∧ n > 0)
(f : ℤ → ℤ → ℕ)
(hf : ∀ m' > 0, ∀ n' > 0, f m' n' = Set.encard {x : Finset.Icc 1 n' → ℤ | ∑ i : Finset.Icc 1 n', |x i| ≤ m'})
: f m n = f n m :=
sorry
