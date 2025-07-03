import Mathlib

/--
Let $x^{(n)} = x(x-1)\cdots(x-n+1)$ for $n$ a positive integer and let $x^{(0)} = 1.$ Prove that \[ (x+y)^{(n)} = \sum_{k=0}^n {n \choose k} x^{(k)} y^{(n-k)}. \]
-/
theorem putnam_1962_b1
(p : ℕ → ℝ → ℝ)
(x y : ℝ)
(n : ℕ)
(h0 : p 0 = fun x : ℝ => 1)
(hp : ∀ n > 0, p n = fun x : ℝ => ∏ i ∈ Finset.range n, (x - i))
: p n (x+y) = ∑ k ∈ Finset.range (n+1), Nat.choose n k * (p k x) * (p (n - k) y) :=
sorry
