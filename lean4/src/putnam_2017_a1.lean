import Mathlib

abbrev putnam_2017_a1_solution : Set ℤ := sorry
-- {x : ℤ | x > 0 ∧ (x = 1 ∨ 5 ∣ x)}
/--
Let $S$ be the smallest set of positive integers such that (a) $2$ is in $S$, (b) $n$ is in $S$ whenever $n^2$ is in $S$, and (c) $(n+5)^2$ is in $S$ whenever $n$ is in $S$. Which positive integers are not in $S$?.
-/
theorem putnam_2017_a1
    (IsQualifying : Set ℤ → Prop)
    (IsQualifying_def : ∀ S, IsQualifying S ↔
      (∀ n ∈ S, 0 < n) ∧
      2 ∈ S ∧
      (∀ n > 0, n ^ 2 ∈ S → n ∈ S) ∧
      (∀ n ∈ S, (n + 5) ^ 2 ∈ S))
    (S : Set ℤ)
    (hS : IsLeast IsQualifying S) :
    Sᶜ ∩ {n | 0 < n} = putnam_2017_a1_solution :=
  sorry
