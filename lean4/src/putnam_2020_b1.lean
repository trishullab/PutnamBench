import Mathlib

open Filter Topology Set

abbrev putnam_2020_b1_solution : ℕ := sorry
-- 1990
/--
For a positive integer $n$, define $d(n)$ to be the sum of the digits of $n$ when written in binary (for example, $d(13) = 1+1+0+1=3)$. Let
\[
S = \sum_{k=1}^{2020} (-1)^{d(k)} k^3.
\]
Determine $S$ modulo 2020.
-/
theorem putnam_2020_b1
(d : ℕ → ℕ)
(S : ℤ)
(hd : d = fun n : ℕ => ∑ i : Fin (Nat.digits 2 n).length, (Nat.digits 2 n)[i]!)
(hS : S = ∑ k : Icc 1 2020, ((-1 : ℤ)^(d k))*(k : ℤ)^3)
: S % 2020 = putnam_2020_b1_solution :=
sorry
