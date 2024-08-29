import Mathlib
open BigOperators

open MvPolynomial Set Nat

theorem putnam_2003_b3 (n : ℕ) :
    n ! = ∏ i in Finset.Icc 1 n, ((List.range ⌊n / i⌋₊).map succ).foldl Nat.lcm 1 := by
  sorry
