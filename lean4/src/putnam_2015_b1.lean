import Mathlib

/--
Let $f$ be a three times differentiable function (defined on $\mathbb{R}$ and real-valued) such that $f$ has at least five distinct real zeros. Prove that $f+6f'+12f''+8f'''$ has at least two distinct real zeros.
-/
theorem putnam_2015_b1
(f : ℝ → ℝ)
(nzeros : (ℝ → ℝ) → ℕ → Prop)
(fdiff : ContDiff ℝ 2 f ∧ Differentiable ℝ (iteratedDeriv 2 f))
(hnzeros : ∀ f' : ℝ → ℝ, ∀ n : ℕ, nzeros f' n = ({x : ℝ | f' x = 0}.encard ≥ n))
(fzeros : nzeros f 5)
: nzeros (f + 6 * deriv f + 12 * iteratedDeriv 2 f + 8 * iteratedDeriv 3 f) 2 :=
sorry
