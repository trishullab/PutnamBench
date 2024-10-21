import Mathlib

open Nat Set

/--
Let $S_n$ denote the set of all permutations of the numbers $1,2,\dots,n$. For $\pi \in S_n$, let $\sigma(\pi)=1$ if $\pi$ is an even permutation and $\sigma(\pi)=-1$ if $\pi$ is an odd permutation. Also, let $\nu(\pi)$ denote the number of fixed points of $\pi$. Show that $\sum_{\pi \in S_n} \frac{\sigma(\pi)}{\nu(\pi)+1}=(-1)^{n+1}\frac{n}{n+1}$.
-/
theorem putnam_2005_b6
(n : ℕ)
(v : Equiv.Perm (Fin n) → ℕ)
(npos : n ≥ 1)
(hv : ∀ p : Equiv.Perm (Fin n), v p = Set.encard {i : Fin n | p i = i})
: (∑ p : Equiv.Perm (Fin n), (Equiv.Perm.signAux p : ℤ) / (v p + 1 : ℝ)) = (-1) ^ (n + 1) * (n / (n + 1 : ℝ)) :=
sorry
