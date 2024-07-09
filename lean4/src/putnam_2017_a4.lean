import Mathlib
open BigOperators

open Topology Filter

theorem putnam_2017_a4
(N : ℕ)
(score : Fin (2 * N) → Fin 11)
(hsurj : ∀ k : Fin 11, ∃ i : Fin (2 * N), score i = k)
(havg : (∑ i : Fin (2 * N), (score i : ℝ)) / (2 * N) = 7.4)
: (∃ s : Finset (Fin (2 * N)), s.card = N ∧ (∑ i in s, (score i : ℝ)) / N = 7.4 ∧ (∑ i in sᶜ, (score i : ℝ)) / N = 7.4) :=
sorry
