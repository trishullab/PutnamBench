import Mathlib

open Finset BigOperators

abbrev modInv (p : ℕ) (k : ℕ) : ℕ := ZMod.val ((k : ZMod p)⁻¹)

abbrev descentCount (p : ℕ) : ℕ :=
  #{k ∈ Finset.Icc 1 (p - 2) | modInv p (k + 1) < modInv p k}

/--
Let $p$ be a prime number greater than 3. For each $k \in \{1, \ldots, p-1\}$,
let $I(k) \in \{1, 2, \ldots, p-1\}$ be such that $k \cdot I(k) \equiv 1 \pmod{p}$.
Prove that the number of integers $k \in \{1, \ldots, p-2\}$ such that
$I(k+1) < I(k)$ is greater than $p/4 - 1$.
-/
theorem putnam_2025_b5
    (p : ℕ)
    (hp_prime : p.Prime)
    (hp_gt : 3 < p) :
    (p : ℚ) / 4 - 1 < descentCount p := by
  sorry
