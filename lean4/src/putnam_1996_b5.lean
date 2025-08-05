import Mathlib

open Function Nat

abbrev putnam_1996_b5_solution : ℕ → ℕ := sorry
-- (fun n : ℕ ↦ 2 ^ ⌊(n + 2) / 2⌋₊ + 2 ^ ⌊(n + 1) / 2⌋₊ - 2)

/--
Given a finite string $S$ of symbols $X$ and $O$, we write $\Delta(S)$ for the number of $X$'s in $S$ minus the number of $O$'s. For example, $\Delta(XOOXOOX)=-1$. We call a string $S$ \emph{balanced} if every substring $T$ of (consecutive symbols of) $S$ has $-2 \leq \Delta(T) \leq 2$. Thus, $XOOXOOX$ is not balanced, since it contains the substring $OOXOO$. Find, with proof, the number of balanced strings of length $n$.
-/
theorem putnam_1996_b5
    (n : ℕ)
    (Δ : (Fin n → ℤˣ) → Fin n → Fin n → ℤ)
    (balanced : (Fin n → ℤˣ) → Prop)
    (hΔ : ∀ S, ∀ a b, a ≤ b → Δ S a b = ∑ i ∈ Finset.Icc a b, (S i : ℤ))
    (hbalanced : ∀ S, balanced S ↔ ∀ a b, a ≤ b → |Δ S a b| ≤ 2) :
    {S : Fin n → ℤˣ | balanced S}.ncard = putnam_1996_b5_solution n :=
  sorry
