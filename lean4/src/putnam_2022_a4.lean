import Mathlib

open MeasureTheory ProbabilityTheory Classical

abbrev putnam_2022_a4_solution : ℝ := sorry
-- 2*Real.exp (-1/2) - 3

/--
Suppose $X_1, X_2, ...$ real numbers between 0 and 1 that are chosen independently and uniformly at random. Let $S = \sum_{i=1}^k X_i / 2^i $ where $k$ is the least positive integer such that $X_k < X_{k+1}$ or $k = \infty$ if there is no such integer. Find the expected value of $S$
-/
theorem putnam_2022_a4
    {Ω : Type*} [MeasureSpace Ω]
    [IsProbabilityMeasure (ℙ : Measure Ω)]
    (X : ℕ → Ω → ℝ)
    (hX : ∀ i, Measurable (X i))
    (hX' : ∀ i, MeasureTheory.pdf.IsUniform (X i) (Set.Icc 0 1) ℙ)
    (hX'' : iIndepFun (fun i => inferInstance) X)
    (k : Ω → Set ℕ)
    /-
    If there is an `l` such that `X_l < X_{l+1}` then this is `Set.Iic l` for the smallest such `l`
    Otherwise, this is `sSup { (Set.Iic m : Set ℕ) | (m : ℕ) } = Set.univ`
    -/
    (hk : ∀ ω, k ω = sSup { s : Set ℕ |
      ∃ m, s = Set.Iic m ∧ ∀ l ∈ s, X l ω < X (l + 1) ω })
    (S : Ω → ℝ)
    (hS : ∀ ω, S ω = ∑' (i : k ω), (X i ω) / (2 ^ (i.val + 1))) :
    ∫ ω, S ω ∂(ℙ : Measure Ω) = putnam_2022_a4_solution := by
  sorry
