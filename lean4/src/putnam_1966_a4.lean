import Mathlib

open Topology Filter

/--
Prove that the $n$th item in the ascending list of non-perfect-square positive integers equals $n + \{\sqrt{n}\}$, where $\{m\}$ denotes the closest integer to $m$.
-/
theorem putnam_1966_a4
(a : ℕ → ℤ)
(ha1 : a 1 = 2)
(hai : ∀ n ≥ 1, a (n + 1) = (if ∃ m : ℤ, m^2 = a n + 1 = True then a n + 2 else a n + 1))
: ∀ n ≥ 1, a n = n + round (Real.sqrt n) :=
sorry
