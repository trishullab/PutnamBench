import Mathlib

open Filter Topology Set

noncomputable abbrev putnam_2020_a6_solution : ℝ := sorry
-- Real.pi / 4
/--
For a positive integer $N$, let $f_N$ be the function defined by
\[
f_N(x) = \sum_{n=0}^N \frac{N+1/2-n}{(N+1)(2n+1)} \sin((2n+1)x).
\]
Determine the smallest constant $M$ such that $f_N(x) \leq M$ for all $N$ and all real $x$.
-/
theorem putnam_2020_a6
  (f : ℤ → (ℝ → ℝ))
  (hf : f = fun N : ℤ => fun x : ℝ =>
    ∑ n ∈ Finset.Icc 0 N, (N + 1/2 - n)/((N + 1)*(2*n + 1)) * Real.sin ((2*n + 1)*x))
  : putnam_2020_a6_solution = sSup {y | ∃ᵉ (N > 0) (x : ℝ), y = f N x} :=
sorry
