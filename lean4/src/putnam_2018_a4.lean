import Mathlib
open BigOperators

-- Note: uses (ℕ → ℕ) instead of (Set.Icc 1 n → ℕ)
theorem putnam_2018_a4
(m n : ℕ)
(a : ℕ → ℤ)
(G : Type*) [Group G]
(g h : G)
(mnpos : m > 0 ∧ n > 0)
(mngcd : Nat.gcd m n = 1)
(ha : ∀ k : Set.Icc 1 n, a k = Int.floor (m * k / (n : ℝ)) - Int.floor (m * ((k : ℤ) - 1) / (n : ℝ)))
(ghprod : ((List.Ico 1 (n + 1)).map (fun k : ℕ => g * h ^ (a k))).prod = 1)
: g * h = h * g :=
sorry
