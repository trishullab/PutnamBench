import Mathlib

open Topology Filter Nat

/--
Prove that the expression
\[
\frac{gcd(m,n)}{n}\binom{n}{m}
\]
is an integer for all pairs of integers $n\geq m\geq 1$.
-/
theorem putnam_2000_b2
: (∀ m n : ℕ, m ≥ 1 → n ≥ m → n ∣ Nat.gcd m n * Nat.choose n m) :=
sorry
