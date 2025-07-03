import Mathlib

open Topology Filter

/--
Let $p_1, p_2, \dots$ be a sequence of positive real numbers. Prove that if $\sum_{n=1}^{\infty} \frac{1}{p_n}$ converges, then $$\sum_{n=1}^{\infty} \frac {n^2 p_n}{(\sum_{i=1}^{n} p_i)^2}$$ also converges.
-/
theorem putnam_1966_b3
(p : ℕ → ℝ)
(hpos : ∀ n : ℕ, p n > 0)
(hconv : ∃ r : ℝ, Tendsto (fun m : ℕ => ∑ n ∈ Finset.Icc 1 m, 1/(p n)) atTop (𝓝 r))
: ∃ r : ℝ, Tendsto (fun m : ℕ => ∑ n ∈ Finset.Icc 1 m, (p n) * n^2/(∑ i ∈ Finset.Icc 1 n, p i)^2) atTop (𝓝 r) :=
sorry
