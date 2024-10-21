import Mathlib

open Filter Topology Set Nat

def klimited (k n : ℕ) (s : Equiv.Perm (Fin n)) := ∀ i, |((s i) : ℤ) - i| ≤ k
/--
Let $n$ and $k$ be positive integers. Say that a permutation $\sigma$ of $\{1,2,\dots,n\} is $k-limited$ if \|\sigma(i) - i\| \leq k$ for all $i$. Prove that the number of $k-limited$ permutations $\{1,2,\dots,n\}$ is odd if and only if $n \equiv 0$ or $1 (mod 2k+1)$.
-/
theorem putnam_2008_b6
(n k : ℕ)
(hnk : n > 0 ∧ k > 0)
: Odd (Set.ncard {s : Equiv.Perm (Fin n) | klimited k n s}) ↔ (n ≡ 0 [MOD 2*k+1] ∨ n ≡ 1 [MOD 2*k+1]) :=
sorry
