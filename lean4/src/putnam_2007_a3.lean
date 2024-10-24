import Mathlib

open Set
open scoped Nat

abbrev putnam_2007_a3_solution : ℕ → ℚ := sorry
-- fun k ↦ (k)! * (k + 1)! / ((3 * k + 1) * (2 * k)!)
/--
Let $k$ be a positive integer. Suppose that the integers $1, 2, 3, \dots, 3k+1$ are written down in random order. What is the probability that at no time during this process, the sum of the integers that have been written up to that time is a positive integer divisible by $3$? Your answer should be in closed form, but may include factorials.
-/
theorem putnam_2007_a3
(k : ℕ)
(kpos : k > 0)
(perms : Set (Fin (3 * k + 1) → ℤ))
(goodperms : Set (Fin (3 * k + 1) → ℤ))
(hgoodperms : goodperms = {f ∈ perms | ¬∃ j : Fin (3 * k + 1), 3 ∣ ∑ i : Fin (3 * k + 1), ite (i ≤ j) (f i) 0})
(hperms : perms = {f : Fin (3 * k + 1) → ℤ | ∀ y ∈ Icc 1 (3 * k + 1), ∃! x : Fin (3 * k + 1), f x = y})
: (goodperms.ncard = perms.ncard * (putnam_2007_a3_solution k)) :=
sorry
