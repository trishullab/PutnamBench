import Mathlib

open Function

/--
If $p$ is a prime number greater than 3 and $k = \lfloor 2p/3 \rfloor$, prove that the sum \[\binom p1 + \binom p2 + \cdots + \binom pk \] of binomial coefficients is divisible by $p^2$.
-/
theorem putnam_1996_a5
(p : ℕ)
(hpprime : Prime p)
(hpge3 : p > 3)
(k : ℕ)
(hk : k = Nat.floor (2*p/(3 : ℚ)))
: p^2 ∣ ∑ i ∈ Finset.Icc 1 k, Nat.choose p i :=
sorry
