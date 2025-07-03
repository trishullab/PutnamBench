import Mathlib

open Real

/--
Let \[ f(x) = \sum_{k=0}^n a_k \sin kx + b_k \cos kx, \] where $a_k$ and $b_k$ are constants. Show that, if $\lvert f(x) \rvert \le 1$ for $0 \le x \le 2 \pi$ and $\lvert f(x_i) \rvert = 1$ for $0 \le x_1 < x_2 < \cdots < x_{2n} < 2 \pi$, then $f(x) = \cos (nx + a)$ for some constant $a$.
-/
theorem putnam_1962_b6
(n : ℕ)
(a b : ℕ → ℝ)
(xs : Set ℝ)
(f : ℝ → ℝ)
(hf : f = fun x : ℝ => ∑ k ∈ Finset.Icc 0 n, ((a k) * Real.sin (k * x) + (b k) * Real.cos (k * x)))
(hf1 : ∀ x ∈ Set.Icc 0 (2 * π), |f x| ≤ 1)
(hxs : xs.ncard = 2 * n ∧ xs ⊆ Set.Ico 0 (2 * π))
(hfxs : ∀ x ∈ xs, |f x| = 1)
: (¬∃ c : ℝ, f = fun x : ℝ => c) → ∃ a : ℝ, f = fun x : ℝ => Real.cos (n * x + a) :=
sorry
