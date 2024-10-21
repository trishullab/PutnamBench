import Mathlib

open Polynomial Real Complex Matrix Filter Topology Multiset

/--
Let $f_0(x) = e^x$ and $f_{n+1}(x) = xf'_n(x)$ for all $n \ge 0$. Prove that $$\sum_{n=0}^{\infty} \frac{f_n(1)}{n!} = e^e.$$
-/
theorem putnam_1975_b5
(e : ℝ)
(he : e = Real.exp 1)
(f : ℕ → ℝ → ℝ)
(h0 : ∀ x : ℝ, f 0 x = e^x)
(hf : ∀ n : ℕ, ∀ x : ℝ, f (n + 1) x = x * (deriv (f n) x))
: ∑' n : ℕ, (f n 1)/(Nat.factorial n) = e^e :=
sorry
