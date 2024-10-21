import Mathlib

/--
Let $f$ be a real function on the real line with continuous third derivative.  Prove that there exists a point $a$ such that \[f(a)\cdot f'(a) \cdot f''(a) \cdot f'''(a)\geq 0 .\]
-/
theorem putnam_1998_a3
(f : ℝ → ℝ)
(hf : ContDiff ℝ 3 f)
: ∃ a : ℝ, (f a) * (deriv f a) * (iteratedDeriv 2 f a) * (iteratedDeriv 3 f a) ≥ 0 :=
sorry
