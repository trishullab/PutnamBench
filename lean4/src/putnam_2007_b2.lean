import Mathlib
open BigOperators

open Set Nat Function

theorem putnam_2007_b2
(f : ℝ → ℝ)
(hf : ContDiffOn ℝ 1 f (Icc 0 1))
(hfint : ∫ x in (0)..1, f x = 0)
(max : ℝ)
(heqmax : ∃ x ∈ Icc (0 : ℝ) 1, |deriv f x| = max)
(hmaxub : ∀ x ∈ Icc (0 : ℝ) 1, |deriv f x| ≤ max)
: (∀ α ∈ (Ioo (0 : ℝ) 1), |∫ x in (0)..α, f x| ≤ (1 / 8) * max) :=
sorry
