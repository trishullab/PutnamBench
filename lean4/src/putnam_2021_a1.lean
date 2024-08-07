import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_2021_a1_solution : ℕ := sorry
-- 578
theorem putnam_2021_a1
(P : List (ℤ × ℤ) → Prop)
(hP : P = fun l : List (ℤ × ℤ) => l.length ≥ 1 ∧ l[0]! = (0, 0) ∧ l[l.length-1]! = (2021, 2021) ∧
∀ n ∈ Finset.range (l.length-1), Real.sqrt ((l[n]!.1 - l[n + 1]!.1)^2 + (l[n]!.2 - l[n + 1]!.2)^2) = 5)
: (∃ l : List (ℤ × ℤ), P l ∧ l.length = putnam_2021_a1_solution) ∧
∀ l : List (ℤ × ℤ), P l → l.length ≥ putnam_2021_a1_solution :=
sorry
