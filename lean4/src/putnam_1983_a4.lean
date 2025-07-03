import Mathlib

open Nat

/--
Prove that for $m = 5 \pmod 6$,
\[
\binom{m}{2} - \binom{m}{5} + \binom{m}{8} - \binom{m}{11} + ... - \binom{m}{m-6} + \binom{m}{m-3} \neq 0.
\]
-/
theorem putnam_1983_a4
(k m : ℕ)
(S : ℤ)
(kpos : k > 0)
(hm : m = 6 * k - 1)
(hS : S = ∑ j ∈ Finset.Icc 1 (2 * k - 1), (-1 : ℤ) ^ (j + 1) * choose m (3 * j - 1))
: (S ≠ 0) :=
sorry
