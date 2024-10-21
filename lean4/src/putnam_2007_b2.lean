import Mathlib

open Set Nat Function

/--
Suppose that $f: [0,1] \to \mathbb{R}$ has a continuous derivative and that $\int_0^1 f(x)\,dx = 0$. Prove that for every $\alpha \in (0,1)$,
\[
\left| \int_0^\alpha f(x)\,dx \right| \leq \frac{1}{8} \max_{0 \leq x
\leq 1} |f'(x)|.
\]
-/
theorem putnam_2007_b2
(f : ℝ → ℝ)
(hf : ContDiffOn ℝ 1 f (Icc 0 1))
(hfint : ∫ x in (0)..1, f x = 0)
(max : ℝ)
(heqmax : ∃ x ∈ Icc (0 : ℝ) 1, |deriv f x| = max)
(hmaxub : ∀ x ∈ Icc (0 : ℝ) 1, |deriv f x| ≤ max)
: (∀ α ∈ (Ioo (0 : ℝ) 1), |∫ x in (0)..α, f x| ≤ (1 / 8) * max) :=
sorry
