import Mathlib

open Nat Filter Topology Set ProbabilityTheory


-- Note: uses (ℝ → ℝ) instead of (Set.Icc 0 1 → ℝ)
/--
Let $(x_1,x_2,\dots,x_n)$ be a point chosen at random from the $n$-dimensional region defined by $0 < x_1 < x_2 <\dots < x_n < 1$. Let $f$ be a continuous function on $[0,1]$ with $f(1)=0$. Set $x_0=0$ and $x_{n+1}=1$. Show that the expected value of the Riemann sum $\sum_{i=0}^n (x_{i+1}-x_i)f(x_{i+1})$ is $\int_0^1 f(t)P(t)\,dt$, where $P$ is a polynomial of degree $n$, independent of $f$, with $0 \leq P(t) \leq 1$ for $0 \leq t \leq 1$.
-/
theorem putnam_1989_b6
    (n : ℕ) [NeZero n]
    (I : (Fin n → ℝ) → Fin (n + 2) → ℝ)
    (I_def : ∀ x i, I x i = by
      by_cases h0 : i = 0
      · exact 0
      · by_cases hn : i = n + 1
        · exact  1
        · exact  x ⟨(i : ℕ).pred, by
            have : i < n + 1 := by omega
            have : (i : ℕ) ≠ 0 := by
              convert h0
              exact Fin.val_eq_zero_iff
            have := pred_lt this
            omega
            ⟩)
    (X : Set (Fin n → ℝ))
    (X_def : ∀ x, x ∈ X ↔ 0 < x 0 ∧ x (-1) < 1 ∧ ∀ (i : Fin n), i + 1 < n → x i < x (i + 1))
    (S : (ℝ → ℝ) → (Fin (n + 2) → ℝ) → ℝ)
    (S_def : ∀ f x, S f x = ∑ i ∈ Finset.Iic (α := Fin (n + 2)) ⟨n, by omega⟩, (x (i + 1) - x i) * f (i + 1)) :
    ∃ P : Polynomial ℝ,
      P.degree = n ∧
      (∀ t ∈ Icc 0 1, P.eval t ∈ Icc 0 1) ∧
      (∀ f : ℝ → ℝ, f 1 = 0 → ContinuousOn f (Icc 0 1) →
        ∫ x, S f (I x) ∂ℙ[|X] = ∫ t in (0)..1, f t * P.eval t) :=
  sorry
