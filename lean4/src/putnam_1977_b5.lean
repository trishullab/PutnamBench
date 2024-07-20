import Mathlib
open BigOperators

open RingHom Set Nat Filter Topology

theorem putnam_1977_b5
(n : ℕ)
(hn : n > 1)
(a : Fin n → ℝ)
(A : ℝ)
(hA : A + ∑ i : Fin n, (a i)^2 < (1/((n : ℝ) - 1))*(∑ i : Fin n, a i)^2)
: ∀ i j : Fin n, i < j → A < 2*(a i)*(a j) :=
sorry
