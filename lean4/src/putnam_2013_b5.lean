import Mathlib
open BigOperators

open Function Set

theorem putnam_2013_b5
(n : ℕ)
(k : Set.Icc 1 n)
(fiter : (Set.Icc 1 n → Set.Icc 1 n) → Prop)
(npos : n ≥ 1)
(hfiter : ∀ f : Set.Icc 1 n → Set.Icc 1 n, fiter f = ∀ x : Set.Icc 1 n, ∃ j : ℕ, f^[j] x ≤ k)
: {f : Set.Icc 1 n → Set.Icc 1 n | fiter f}.encard = k * n ^ (n - 1) :=
sorry
