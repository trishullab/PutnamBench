import Mathlib

open Finset

abbrev putnam_2025_a5_solution : (n : ℕ) → Set (Fin n → ℤˣ) := sorry
-- fun n => {s | (∀ i : Fin n, s i = (-1) ^ (i.val + 1)) ∨ (∀ i : Fin n, s i = (-1) ^ i.val)}

def f (n : ℕ) (s : Fin n → ℤˣ) : ℕ :=
  Finset.card {σ : Equiv.Perm (Fin (n + 1)) |
    ∀ i : Fin n, 0 < (s i : ℤ) * ((σ i.succ : ℤ) - (σ i.castSucc : ℤ))}

/--
Let $n$ be an integer with $n \ge 2$. For a sequence $s = (s_1, \ldots, s_{n-1})$ where each
$s_i = \pm 1$, let $f(s)$ be the number of permutations $(a_1, \ldots, a_n)$ of $\{1, 2, \ldots, n\}$
such that $s_i(a_{i+1} - a_i) > 0$ for all $i$. For each $n$, determine the sequences $s$ for which
$f(s)$ is maximal.
-/
theorem putnam_2025_a5
    (n : ℕ)
    (hn : 1 ≤ n)
    (s : Fin n → ℤˣ) :
    (∀ t : Fin n → ℤˣ, f n t ≤ f n s) ↔ s ∈ putnam_2025_a5_solution n := by
  sorry
