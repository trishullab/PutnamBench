import Mathlib
open BigOperators

open Nat Topology Filter

theorem putnam_2004_b2
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
: ((m + n)! / ((m + n) ^ (m + n) : ℚ)) < (((m)! / (m ^ m : ℚ)) * ((n)! / (n ^ n : ℚ))) :=
sorry
