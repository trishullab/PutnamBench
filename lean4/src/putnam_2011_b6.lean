import Mathlib

open Topology Filter Matrix Set

/--
Let $p$ be an odd prime. Show that for at least $(p+1)/2$ values of $n$ in $\{0,1,2,\dots,p-1\}$,
\[
\sum_{k=0}^{p-1} k! n^k \qquad \mbox{is not divisible by $p$.}
\]
-/
theorem putnam_2011_b6
(p : ℕ)
(hp : Odd p ∧ Nat.Prime p)
: {n ∈ Finset.range p | ¬ p ∣ ∑ k : Finset.range p, Nat.factorial k * n^(k : ℕ)}.card ≥ (p + 1)/2 :=
sorry
