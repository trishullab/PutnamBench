import Mathlib

noncomputable abbrev putnam_2024_a3_solution : Prop := sorry
--True
/--
Let $S$ be the set of bijections $$T : \{1, 2, 3\} \times \{1, 2, ..., 2024\} \to \{1, 2, ..., 6072\}$$
such that $T(1, j) < T(2, j) < T(3, j)$ for all $j \in \{1, 2, ..., 2024\}$ and
$T(i, j) < T(i, j + 1)$ for all $i \in \{1, 2, 3\}$ and $j \in \{1, 2, ..., 2023\}$.
Do there exist $a, c$ in $\{1, 2, 3\}$ and $b$ and $d$ in $\{1, 2, ..., 2024\}$ such that
the fraction of elements $T$ in $S$ for which $T(a, b) < T(c, d)$ is at least $1/3$ and at most $2/3$?
-/
theorem putnam_2024_a3
    (S : Set (ℕ × ℕ → ℕ))
    (hS : S = {T | Set.BijOn T (Finset.Icc 1 3 ×ˢ Finset.Icc 1 2024) (Finset.Icc 1 6072) ∧
      (∀ j ∈ Finset.Icc 1 2024, StrictMonoOn (fun i => T (i, j)) (Set.Icc 1 3)) ∧
      (∀ i ∈ Finset.Icc 1 3, StrictMonoOn (fun j => T (i, j)) (Set.Icc 1 2024)) ∧
      (∀ x, x ∉ Finset.Icc 1 3 ×ˢ Finset.Icc 1 2024 → T x = 0)}) :
    (∃ a ∈ Finset.Icc 1 3, ∃ b ∈ Finset.Icc 1 2024, ∃ c ∈ Finset.Icc 1 3, ∃ d ∈ Finset.Icc 1 2024,
      ({T | T ∈ S ∧ T (a, b) < T (c, d)}.ncard  / S.ncard : ℚ) ∈ Set.Icc (1/3) (2/3))
    ↔ putnam_2024_a3_solution :=
  sorry
