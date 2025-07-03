import Mathlib

open MvPolynomial Set Nat

/--
Show that for each positive integer $n$, $n!=\prod_{i=1}^n \text{lcm}\{1,2,\dots,\lfloor n/i \rfloor\}$. (Here lcm denotes the least common multiple, and $\lfloor x \rfloor$ denotes the greatest integer $\leq x$.)
-/
theorem putnam_2003_b3 (n : ℕ) :
    n ! = ∏ i ∈ Finset.Icc 1 n, ((List.range ⌊n / i⌋₊).map succ).foldl Nat.lcm 1 :=
  sorry
