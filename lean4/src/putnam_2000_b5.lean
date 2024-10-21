import Mathlib

open Topology Filter Nat Set Function

/--
Let $S_0$ be a finite set of positive integers. We define finite sets $S_1,S_2,\ldots$ of positive integers as follows: the integer $a$ is in $S_{n+1}$ if and only if exactly one of $a-1$ or $a$ is in $S_n$. Show that there exist infinitely many integers $N$ for which $S_N=S_0\cup\{N+a: a\in S_0\}$.
-/
theorem putnam_2000_b5
(S : ℕ → Set ℤ)
(hSfin : ∀ n : ℕ, Set.Finite (S n))
(hSpos : ∀ n : ℕ, ∀ s ∈ S n, s > 0)
(hSdef : ∀ n : ℕ, ∀ a : ℤ, a ∈ S (n + 1) ↔ Xor' (a - 1 ∈ S n) (a ∈ S n))
: (∀ n : ℕ, ∃ N ≥ n, S N = S 0 ∪ {M : ℤ | M - N ∈ S 0}) :=
sorry
