import Mathlib
open BigOperators

open Topology Filter

abbrev putnam_2017_b2_solution : ℕ := sorry
-- 16
/--
Suppose that a positive integer $N$ can be expressed as the sum of $k$ consecutive positive integers
\[
N = a + (a+1) +(a+2) + \cdots + (a+k-1)
\]
for $k=2017$ but for no other values of $k>1$. Considering all positive integers $N$ with this property, what is the smallest positive integer $a$ that occurs in any of these expressions?
-/
theorem putnam_2017_b2
(S : ℤ → ℕ → ℤ)
(p : ℤ → ℕ → Prop)
(q : ℤ → Prop)
(hS : S = fun (a : ℤ) k ↦ ∑ i in Finset.range k, (a + i))
(hp : p = fun N k ↦ ∃ a > 0, S a k = N)
(hq : q = fun N ↦ p N 2017 ∧ ∀ k : ℕ, k > 1 → k ≠ 2017 → ¬p N k)
: q (S putnam_2017_b2_solution 2017) /\ ∀ a > 0, q (S a 2017) → putnam_2017_b2_solution ≤ a :=
sorry
