import Mathlib
open BigOperators

theorem putnam_1962_b1
(p : ℕ → ℝ → ℝ)
(x y : ℝ)
(n : ℕ)
(h0 : p 0 = fun x : ℝ => 1)
(hp : ∀ n > 0, p n = fun x : ℝ => ∏ i in Finset.range n, (x - i))
: p n (x+y) = ∑ k in Finset.range (n+1), Nat.choose n k * (p k x) * (p (n - k) y) :=
sorry
