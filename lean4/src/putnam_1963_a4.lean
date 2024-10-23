import Mathlib

open Filter Set

/--
Let $\{a_n\}$ be a sequence of positive real numbers. Show that $\limsup_{n \to \infty} n\left(\frac{1+a_{n+1}}{a_n}-1\right) \geq 1$. Show that the number $1$ on the right-hand side of this inequality cannot be replaced by any larger number. (The symbol $\limsup$ is sometimes written $\overline{\lim}$.)
-/
theorem putnam_1963_a4
    (T : (ℕ → ℝ) → (ℕ → ℝ))
    (T_def : ∀ a n, T a n = n * ((1 + a (n + 1)) / a n - 1))
    (P : (ℕ → ℝ) → ℝ → Prop)
    (P_def : ∀ a C, P a C ↔ C ≤ limsup (T a) atTop ∨ ¬ BddAbove (range (T a))) :
    (∀ a, (∀ n, 0 < a n) → P a 1) ∧ (∀ C > 1, ∃ a, (∀ n, 0 < a n) ∧ ¬ P a C) :=
  sorry
