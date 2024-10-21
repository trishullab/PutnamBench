import Mathlib

open Filter Topology

/--
Suppose $p$ is an odd prime. Prove that $\sum_{j=0}^p \binom{p}{j}\binom{p+j}{j} \equiv 2^p+1 \pmod{p^2}$.
-/
theorem putnam_1991_b4
(p : ℕ)
(podd : Odd p)
(pprime : Prime p)
: (∑ j : Fin (p + 1), (p.choose j) * ((p + j).choose j)) ≡ (2 ^ p + 1) [MOD (p ^ 2)] :=
sorry
