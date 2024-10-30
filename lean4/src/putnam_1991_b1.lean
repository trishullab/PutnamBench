import Mathlib

open Filter Topology

abbrev putnam_1991_b1_solution : Set ℤ := sorry
-- {A : ℤ | ∃ x > 0, A = x ^ 2}
/--
For each integer $n \geq 0$, let $S(n)=n-m^2$, where $m$ is the greatest integer with $m^2 \leq n$. Define a sequence $(a_k)_{k=0}^\infty$ by $a_0=A$ and $a_{k+1}=a_k+S(a_k)$ for $k \geq 0$. For what positive integers $A$ is this sequence eventually constant?
-/
theorem putnam_1991_b1
  (m S : ℤ → ℤ)
  (A : ℤ)
  (a : ℕ → ℤ)
  (hm : ∀ n, 0 ≤ n → (m n) ^ 2 ≤ n ∧ (∀ m' : ℤ, m' ^ 2 ≤ n → m' ≤ m n))
  (hS : ∀ n, 0 ≤ n → S n = n - (m n) ^ 2)
  (ha : a 0 = A ∧ (∀ k, a (k + 1) = a k + S (a k)))
  (hA : A > 0) :
  (∃ (K : ℕ) (c : ℕ), ∀ k ≥ K, a k = c) ↔ A ∈ putnam_1991_b1_solution :=
sorry
