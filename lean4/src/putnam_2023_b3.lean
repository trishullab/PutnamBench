import Mathlib

open ProbabilityTheory Set

noncomputable abbrev putnam_2023_b3_solution : ℕ → ℝ := sorry
-- (fun n : ℕ ↦ (2 * (n : ℝ) + 2) / 3)
/--
A sequence $y_1, y_2, \ldots, y_k$ of real numbers is called zigzag if $k = 1$, or if $y_2 - y_1, y_3 - y_2, \ldots, y_k - y_{k-1}$ are nonzero and alternate in sign. Let $X_1, X_2,\ldots, X_n$ be chosen independently from the uniform distribution on $[0,1]$. Let $a(X_1, X_2, \ldots, X_n)$ be the largest value of $k$ for which there exists an increasing sequence of integers $i_1, i_2, \ldots, i_k$ such that $X_{i_1}, X_{i_2}, \ldots, X_{i_k}$ is zigzag. Find the expected value of $a(X_1, X_2, \ldots, X_n)$ for $n \ge 2$.
-/
theorem putnam_2023_b3
    (IsZigZag : {k : ℕ} → (Fin k → ℝ) → Prop)
    (IsZigZag_def : ∀ (k : ℕ) [NeZero k] (y : Fin k → ℝ),
      IsZigZag y ↔ k = 1 ∨ ((∀ (i : Fin k), i + 1 < k → y (i + 1) ≠ y i)) ∧
        (∀ (i : Fin k), i + 2 < k → (y (i + 2) < y (i + 1) ↔ y i < y (i + 1))))
    (n : ℕ)
    (hn : 2 ≤ n)
    (a : (Fin n → Icc (0 : ℝ) 1) → ℕ)
    (ha : ∀ x, IsGreatest {k | ∃ i : Fin k ↪o Fin n, IsZigZag ((↑) ∘ x ∘ i)} (a x)) :
    𝔼[(↑) ∘ a] = putnam_2023_b3_solution n :=
  sorry
