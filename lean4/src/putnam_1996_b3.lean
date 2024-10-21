import Mathlib

open Function

-- Note: uses (ℕ → ℕ) instead of (Fin n → ℕ)
abbrev putnam_1996_b3_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => (2 * n ^ 3 + 3 * n ^ 2 - 11 * n + 18) / 6)
/--
Given that $\{x_1,x_2,\ldots,x_n\}=\{1,2,\ldots,n\}$, find, with proof, the largest possible value, as a function of $n$ (with $n \geq 2$), of $x_1x_2+x_2x_3+\cdots+x_{n-1}x_n+x_nx_1$.
-/
theorem putnam_1996_b3
(n : ℕ)
(xset : (ℕ → ℤ) → Prop)
(xsum : (ℕ → ℤ) → ℤ)
(nge2 : n ≥ 2)
(hxset : ∀ x : ℕ → ℤ, xset x = (x '' (Finset.range n) = Set.Icc (1 : ℤ) n))
(hxsum : ∀ x : ℕ → ℤ, xsum x = ∑ i : Fin n, x i * x ((i + 1) % n))
: (∃ x : ℕ → ℤ, xset x ∧ xsum x = putnam_1996_b3_solution n) ∧ (∀ x : ℕ → ℤ, xset x → xsum x ≤ putnam_1996_b3_solution n) :=
sorry
